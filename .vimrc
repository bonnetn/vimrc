" My .vimrc
" - Nicolas Bonnet

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Buffers are hidden by default
set hidden

" Add handy shortcuts to switch between buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Speed up macro
set nolazyredraw

let mapleader=" "

set timeoutlen=2000

" Add a menu when autocompleting filenames
set wildmenu
set wildignore=*.o,*~,*.pyc

" Always keep x lines between the cursor and the end/top of the file
set scrolloff=4

" Enable synthax highlighting
syntax enable

" Width of TAB char set tabstop=2 " For >> 
set shiftwidth=2  

" Insert *softtabstop* spaces instead of TAB char
set expandtab
set softtabstop=2

" Display line numbers
set relativenumber
set number

" Sudo write
command W w !sudo tee % > /dev/null

" Show position
set ruler

" Ignore case
set ignorecase
set smartcase

" Highlight search
set hlsearch

" Search at each character typed
set incsearch

" Show matching brackets
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Encoding
set encoding=utf8

" No backup
set nobackup
set nowb
set noswapfile

" Will delete a whole tab (4 spaces) when backscaping
set smarttab

" Auto indent
set ai
set si

" Use 256 colors
set t_Co=256

let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = "jellybeans"

" disable :wq (I try to use ZZ instead)
cabbrev wq w

" Easy motion
map <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)

map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

" Fuzzy finding
" Plug '/usr/local/opt/fzf'


" colorscheme molokai
colorscheme dark_eyes

set nowrap
set colorcolumn=0

