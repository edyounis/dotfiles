" Map leader to which_key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>

" Keymap
let g:which_key_map = {}

" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC', 'open config' ]
let g:which_key_map['n'] = [ ':let @/ = ""', 'no highlight' ]
let g:which_key_map['q'] = [ 'q', 'quit' ]
let g:which_key_map['u'] = [ ':UndotreeToggle', 'undo tree' ]
let g:which_key_map['r'] = [ ':call Raw()', 'Raw' ]
let g:which_key_map['v'] = [ ':Codi!!', 'virtual repl' ]
let g:which_key_map['w'] = [ 'w', 'write' ]
" let g:which_key_map['W'] = [ '!sudo tee > /dev/null %', 'Sudo write' ]
let g:which_key_map['z'] = [ ':Limelight!! | Goyo', 'zen' ]

" Git (g)
let g:which_key_map.g = {
	\ 'name' : '+git',
	\ 'h' : [ ':GitGutterLineHighlightsToggle', 'highlight hunks' ],
	\ 's' : [ ':GitGutterSignsToggle', 'Toggle gutter signs' ],
	\ }

call which_key#register('<Space>', "g:which_key_map")

