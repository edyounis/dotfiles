" ================ General Config ====================

" let g:mapleader = ' '		" Change leader to space

" Vundle Required
" set nocompatible
" filetype off

" Vundle
" set rtp+=~/.local/etc/nvim/bundle/Vundle.vim
" call vundle#begin('~/.local/etc/nvim/bundle')

" Vundle
" Plugin 'VundleVim/Vundle.vim'

" Filetree Explorer
" Plugin 'scrooloose/nerdtree'

" Comment Script
" Plugin 'preservim/nerdcommenter'

" AutoComplete
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rdnetto/YCM-Generator'

" Goyo Alignment and Distraction Manager
" Plugin 'junegunn/goyo.vim'

" Limelight Distraction Manager
" Plugin 'junegunn/limelight.vim'

" call vundle#end()
"
source $XDG_CONFIG_HOME/nvim/config/plugins.vim
source $XDG_CONFIG_HOME/nvim/config/which_key.vim
"source $XDG_CONFIG_HOME/nvim/config/sneak.vim
"source $XDG_CONFIG_HOME/nvim/config/coc.vim
source $XDG_CONFIG_HOME/nvim/config/gitgutter.vim
"source $XDG_CONFIG_HOME/nvim/config/ale.vim
filetype plugin indent on


set number
set relativenumber
set history=500
set showcmd
set guicursor=a:blinkon500-blinkwait500-blinkoff500
set cursorline
set smartcase
set ignorecase
set showmatch
set nostartofline
set timeoutlen=1000 ttimeoutlen=0
set fileencoding=utf-8
set wrap
set linebreak
set listchars=tab:→\ ,eol:↲,trail:·,nbsp:·
set list
set lazyredraw
set hidden
set conceallevel=2 concealcursor=i

set noswapfile
set nobackup
set nowritebackup

set autoindent
set noexpandtab
set shiftwidth=4
set softtabstop=-1
set tabstop=4
set nofoldenable
set colorcolumn=72,80,100
set foldmethod=indent
set foldnestmax=1
set foldlevel=1

syntax on
colorscheme molokai

set undofile
set undodir=$XDG_CACHE_HOME/nvim

let g:tex_conceal = ""

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = [ '<C-k>' ]
let g:ycm_key_list_previous_completion = [ '<C-i>' ]
let g:ycm_key_list_stop_completion = [ '<Left>', '<Right>' ]

autocmd FileType python setlocal noexpandtab
autocmd FileType python setlocal autoindent
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=-1
autocmd FileType python setlocal tabstop=4

" Smart Home
"jump to first non-whitespace on line, jump to begining of line if already at first non-whitespace
map <Home> :call LineHome()<CR>:echo<CR>
imap <Home> <C-R>=LineHome()<CR>
map ^[[H~ :call LineHome()<CR>:echo<CR>
imap ^[[H~ <C-R>=LineHome()<CR>
function! LineHome()
  let x = col('.')
  execute "normal ^"
  if x == col('.')
    execute "normal 0"
  endif
  return ""
endfunction

" Viminfo
set viminfo+=n~/.local/share/nvim/viminfo

" Commands
function Raw()
   if &list
        set nolist
        set nonumber
        set norelativenumber
        set colorcolumn=
    else
        set list
        set number
        set relativenumber
        set colorcolumn=72,80,100
    endif
endfunction

function LatexCompileAndOpen()
	silent! !pdflatex --output-directory="$XDG_CACHE_HOME/nvim" "%"
	if v:shell_error == 0
		silent! !zathura $XDG_CACHE_HOME/nvim/%:t:r.pdf
	endif
endfunction

function LatexCompileAndPrint()
	!pdflatex --output-directory="$XDG_CACHE_HOME/nvim" "%"
endfunction

" Mappings
" cmap W w !sudo tee > /dev/null %
" map t :NERDTreeToggle<CR>
" map r :call Raw()<CR>
" map w :write<CR>
map q :quit<CR>
" cmap lo :call LatexCompileAndOpen()
" cmap lp :call LatexCompileAndPrint()
" map z :Goyo<CR>	
" map x :Limelight!!<CR>
"noremap a zc
"noremap <A-a> zm
"noremap s zo
"noremap <A-s> zr


map <A-i> {
map <A-k> }
imap <A-i> <C-o>{
imap <A-k> <C-o>}

map <Up> g<Up>
map <Down> g<Down>
" map <Home> g<Home>
map <End>  g<End>

" imap <Home> <C-o><Home>
imap <End> <C-o><End>
imap <Up> <C-o><Up>
imap <Down> <C-o><Down>

nmap <Esc> :

nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

au Filetype python setlocal ts=4 sts=0 expandtab shiftwidth=4 smarttab

