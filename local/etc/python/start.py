import atexit
import os
import readline

histfile = os.path.join( os.environ['XDG_DATA_HOME'],
                         os.path.join( os.path.expanduser( "python" ), "python_history" ) )
try:
    readline.read_history_file(histfile)
    readline.set_history_length(10000)
except FileNotFoundError:
    pass

atexit.register(readline.write_history_file, histfile)
