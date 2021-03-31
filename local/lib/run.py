#!/bin/python

import os
import subprocess
import re

def split_command ( command ):
	return [p.replace('"', '') for p in re.split("( |\\\".*?\\\"|'.*?')", command) if p.strip()]

# Building Block Function to run Bash Command
def run_command ( command ):
	commands  = command.split(" | ")
	processes = [subprocess.Popen( split_command( commands[0] ), stdout=subprocess.PIPE, env=os.environ.copy() )]

	for cmd in commands[1:]:
		processes.append( subprocess.Popen( cmd.split(),
											stdin=processes[-1].stdout,
											stdout=subprocess.PIPE,
											env=os.environ.copy() ) )

	output, error = processes[-1].communicate()
	return_code   = processes[-1].returncode
	return ( return_code, output.decode('utf-8') )

