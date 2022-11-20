" NEW VIMRC FILE
" GENERAL SETTINGS

let mapleader = " "             " set leader key to space


set title
set path+=**                    " searches current directory recursively.

set nocompatible                " necessary for several cool vim things

set tabstop=2 softtabstop=2     " sets tabs equal to 4 spaces
set shiftwidth=2                " sets shift width to 4 spaces
set expandtab                   " converts tabs to spaces
set smartindent                 " attempts to properly indent - set autoindent

set showcmd                     " shows current command
set showmode                    " shows current mode

syntax on                       " enables syntax highlighting

set number                      " shows line numbers
set relativenumber              " shows line numbers relative to the cursor position

set nowrap                      " does not allow lines to wrap

set ignorecase                  " ignores case when searching
set smartcase                   " turns on case sensitive search when letters are capitalized
set incsearch                   " sets incremental search


set scrolloff=8                 " starts scrolling the page when cursor is # lines from the bottom

set encoding=utf-8

set nohlsearch                  " turns off highlight after enter is pressed when searching

set mouse=a                     " mouse scrolling

set clipboard+=unnamedplus      " sets the clipboard so you can paste stuff from outside vim into vim.

set complete+=kspell            " auto complete with spellcheck
set completeopt=menuone,longest " auto complete menu (It's pretty great)

set nobackup                    " Do not save backup files.
set scrolloff=8                 " Do not let cursor scroll below or above N number of lines when scrolling.

                                " Do not let cursor scroll below or above N number of lines when scrolling.
set backspace=indent,eol,start  " backspace keeps working
set encoding=utf-8

set history=1000                " Set the commands to save in history default number is 20.

filetype on
filetype indent on

filetype plugin on

""""
" NO PLUGIN MANAGER

" clone, pull (update)  plugins at opt and start directories:
" ~/.vim/pack/myplugins/start/    ~/.vim/pack/myplugins/opt
"
" push/pull  /home/charles/git/dotfiles/vimrc  to/from  https//:journeyma33/dotfiles/vimrc

let NERDTreeShowHidden=1


"""

colorscheme slate               " also try hybrid (nvim)

set splitbelow splitright       " sets more logical split behavior

set laststatus=2                " always show statusline

" remap split navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" adjust split sizes easier
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" open a terminal inside nvim
map <leader>tt : term zsh<CR>

" change 2 split windows from vertical to horizontal or vice versa
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

" remap ESC
" :imap <CapsLock> <Esc>  try this in nvim
:imap ii <Esc>
:imap jj <Esc>

" simulate moving in shell/terminal insert mode (or emacs)
:imap <silent> <C-e> <ESC>A
:imap <silent> <C-a> <ESC>I

" open vifm in a vertical split
" nnoremap <leader>vs :VsplitVifm<CR>
" remove  trailing whitespace on save:
autocmd BufWritePre * %s/\s\+$//e

" automatically close brackets and parenthesis and place cursor inside
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0
