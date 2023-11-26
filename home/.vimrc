"Syntax highlighting
syntax on
"Tab space options
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

if has('win32')
  let &shell = has('win32') ? 'powershell' : 'pwsh'
  let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
  let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
  let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
  set shellquote= shellxquote=
else
  "set shell=bash\ --login
endif

let $VIM = expand('$HOME/.vim')
"Call plugin config file, if available
try
    source $VIM/JTVim/pluginconfig.vim
catch
    echo 'plugins file not sourced properly'
endtry

if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    let g:neovide_transparency = 0.95
    let g:neovide_theme = 'auto'
    let g:neovide_cursor_vfx_mode = "railgun"
    let cwd = getcwd()
    if cwd == 'C:\Program Files\Neovide'
        exe 'cd ~'
    endif
endif
