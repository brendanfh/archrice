set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tomasiser/vim-code-dark'
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'floobits/floobits-neovim'

call vundle#end()
filetype plugin indent on
syntax on

colorscheme codedark

set number
set nowrap
set tabstop=4
set shiftwidth=4

set t_Co=256
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :terminal ++curwin<CR>

let g:ctrl_p_custom_ignore = 'node_modules'


