"Syntax highlighting
syntax on
"Tab/space options
set tabstop=4
set shiftwidth=4
set shiftround
set softtabstop=4
set expandtab
set autoindent
set mouse=a "mouse functionality
set ignorecase 
set smartcase "ignore case with lowercase letters"
set incsearch
set autoread

"Line numbers
set number
set relativenumber
nnoremap <Leader>ln :set relativenumber!<cr>

"Text wrapping beyond screen length
set wrap

"Themes
set termguicolors
colorscheme desert

"80th column marker
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

"page up/down centering:
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

":-line autocompletion
set wildmenu
set wildmode=longest:full,full
set wildcharm=<C-z>

"buffer listing
nnoremap <Leader>b :buffer <C-z>

"Status bar
set laststatus=2

"Encoding
set encoding=utf-8

set shell=bash\ --login

"Call plugin config file, if available
try
    source ~/.vim/JTVim/pluginconfig.vim
catch
    echo 'plugins file not sourced properly'
endtry

