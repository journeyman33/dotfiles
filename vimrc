
"set showcmd
"
"set filetype off
"set filetype plugin indent on
"
"set noswapfile
"set noshowmode
"set ts=2 sw=2 sts=2 et
"set backspace=indent,eol,start
"
"let mapleader="," 
"
"if has("autocmd")
"   autocmd FileType go set ts=2 sw=2 sts=2 noet nolist autowrite
"endif 
"
"syntax on
"
"
"" vim-plug JAY - Call the .vimrc.plug file
"if filereadable(expand("~/.vimrc.plug"))
"      source ~/.vimrc.plug
"endif
"
"
"                         MY VIMRC FILE
"

color slate
" set guicursor=   works in neovim - set cursor to block

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable   === PLUGINS ===    load plugin for the detected file type.
"          ~/.vim/pack/myplugins/start/    ~/.vim/pack/myplugins/opt
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
" Highlight cursor line underneath the cursor horizontally.
" set cursorline


" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn
" " Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10


" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000


" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with t:hese extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" MAP ESCAPE KEY - inoremap (Normal mode) – Allows you to map keys in insert mode.
inoremap jk <esc>

" MAPLEADER
let mapleader = ","



" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2


" sp > goes to bottom vs > goes to righit
set splitbelow splitright




" BLOCK CURSOR  ===  (1) Normal mode  = block   (2) Insert = line
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Using iTerm2? Go-to preferences / profile / colors and disable the smart bar
" cursor color. Then pick a cursor and highlight color that matches your
" theme.
" That will ensure your cursor is always visible within insert mode.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

