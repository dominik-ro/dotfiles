set mouse=a
set t_Co=256
set termguicolors
let &colorcolumn=join(range(81,82), ",")

"set path+=**

" Display all matching files for tab completion:
set wildmenu

" relative + absolute line numbers:
set relativenumber
set number

set foldlevelstart=99

" implicitly use the clipboard:
set clipboard+=unnamedplus

syntax on
filetype on
filetype plugin indent on
set textwidth=72
set foldmethod=syntax
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set hidden
set bufhidden=hide
set backupcopy=yes " for webpack
set backupdir^=~/.config/nvim/backup,/tmp
set nowrap
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set encoding=utf-8

colorscheme znake
highlight Comment cterm=italic gui=italic


" backup
if has("vms")
    set nobackup        " do not keep a backup file, use versions instead
else
    set backup		" keep a backup file (restore to previous version)
    set undofile	" keep an undo file (undo changes after closing)
endif



" call plug#begin('~/.local/share/nvim/plugged')
"     Plug 'flazz/vim-colorschemes'
"     "Plug 'mxw/vim-jsx'
"     Plug 'tpope/vim-surround'
"     Plug 'cloudhead/neovim-fuzzy'
"     Plug 'godlygeek/tabular'
"     Plug 'itchyny/lightline.vim'
" call plug#end()



let mapleader=" "

nnoremap <Leader>+ "+
nnoremap <Leader>W :set wrap!<Esc>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>i i_<Esc>r
nnoremap <Leader>b a<CR><Esc>
nnoremap <expr> <leader>v ":".winwidth(0)/3*2."vsplit\<CR>"

" move text up a line
nnoremap <up> kddpk 

" move text down a line
nnoremap <down> ddp 

nnoremap <left> :bnext<CR>
nnoremap <right> :bprevious<CR> 

noremap <Leader>. :e ~/.config/nvim/init.vim<CR>
noremap <Leader><esc> :set hlsearch!<CR>
noremap <Leader>N :set relativenumber!<CR>


" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
    au!
    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=72
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif
augroup END

" au BufRead * normal zR


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif
