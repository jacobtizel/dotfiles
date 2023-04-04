"Syntax highlighting
syntax on
"Tab/space options
set tabstop=4
set shiftwidth=4
set shiftround
set softtabstop=4
set expandtab
set autoindent
"Themes
set termguicolors
colorscheme desert

"Line numbers
set number

"80th column marker
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

set mouse=a

set ignorecase
set smartcase
set incsearch

set autoread

":-line autocompletion
set wildmenu
set wildmode=longest:full,full

"Status bar
"set laststatus=2

"Text wrapping beyond screen length
set wrap

"Encoding
set encoding=utf-8

"Call plugin config file, if available
try
    source ~/.vim/JTVim/pluginconfig.vim
catch
    echo 'plugins file not sourced properly'
endtry
