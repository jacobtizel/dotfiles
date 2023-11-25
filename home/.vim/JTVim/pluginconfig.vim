"Vim-plug setup
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source 
endif

"Plugin calls from Vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'natebosch/vim-lsc'

source $VIM/plugconfig/airline.vim
source $VIM/plugconfig/vim-lsc.vim

if has('nvim')

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
"prereq for telescope
Plug 'nvim-lua/plenary.nvim'
"fuzzy finder
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
"Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

source $VIM/plugconfig/telescope.vim
endif

call plug#end()
