set nocompatible              " be iMproved, required
filetype off                  " required

set ruler laststatus=2 title 

command W w
command Q q
command Wq wq
cnoreabbrev wQ wq
command WQ wq

set timeoutlen=1000 ttimeoutlen=0

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


call plug#begin('~/.local/share/nvim/plugged')

" Install plugins here
"

" Fugitive git plugin
Plug 'tpope/vim-fugitive'

" Fuzzy file finder plugin
Plug 'git://git.wincent.com/command-t.git'

" Git gutter for vim 
Plug 'airblade/vim-gitgutter'

" Status line plugin for vim
Plug 'vim-airline/vim-airline'

Plug 'Valloric/YouCompleteMe'
" let g:ycm_global_ycm_extra_conf = '~/.local/share/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" auto pair match plugin
Plug 'https://github.com/jiangmiao/auto-pairs.git'

" Nerd tree
Plug 'https://github.com/scrooloose/nerdtree.git'

" Comment Plugin
Plug 'tomtom/tcomment_vim'

" Fuzzy file matcher
Plug 'https://github.com/kien/ctrlp.vim.git'

" Enhanced c++ highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Easy tags for tagging
Plug 'https://github.com/xolox/vim-easytags.git'
Plug 'https://github.com/xolox/vim-misc.git'

call plug#end()

let g:airline_powerline_fonts=1

autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'" 

set exrc
set mouse=a
set tabstop=4
set shiftwidth=4

set smarttab
set autoindent
set smartindent
set cindent

set showcmd
set relativenumber
set autowrite
set autoread

set nowrap
syntax on

" Add some customization to colors
highlight LineNr ctermfg=Yellow
highlight Statement ctermfg=Yellow
