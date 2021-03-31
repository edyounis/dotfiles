" auto-install vim-plug
if empty(glob('$XDG_CONFIG_HOME/nvim/autoload/plug.vim'))
  silent !curl -fLo "$XDG_CONFIG_HOME/nvim/autoload/plug.vim" --create-dirs
    \ https://raw.githubusercontent.com/hello/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin("$XDG_CONFIG_HOME/nvim/autoload/plugs")

	" Easier commenting
	" Plug 'tpope/vim-commentary'

	" Easier Navigation
	" Plug 'justinmk/vim-sneak'

	" Goyo Alignment and Distraction Manager
	" Plug 'junegunn/goyo.vim'

	" Limelight Distraction Manager
	" Plug 'junegunn/limelight.vim'

	" Remember which key does what
	Plug 'liuchengxu/vim-which-key'

	" Non linear undo tree
	" Plug 'mbbill/undotree'

	" Similiar word highlighter
	Plug 'RRethy/vim-illuminate'

	" Code Completion
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Git
	Plug 'airblade/vim-gitgutter'

	" Interactive Code
	" Plug 'metakirby5/codi.vim'

	" Multi Cursor
	" Plug 'mg979/vim-visual-multi'

	" Find and replace
	" Plug 'brooth/far.vim'

	" Async Linting Engine
	" Plug 'dense-analysis/ale'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
