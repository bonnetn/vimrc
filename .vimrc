nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

set wildmenu
set wildignore=*.o,*~,*.pyc
set scrolloff=4
set colorcolumn=80
syntax enable
" Width of TAB char set tabstop=2 " For >> 
set shiftwidth=2  
" Insert *softtabstop* spaces instead of TAB char
set expandtab
set softtabstop=2

" Display line numbers
set number "relativenumber    " toggle hybrid line numbers

" Display a bar at 80 chars
set textwidth=80

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

" Colorscheme
"colorscheme desert
"set background=dark

" Encoding
set encoding=utf8

" No backup
set nobackup
set nowb
set noswapfile

set smarttab

" Auto indent
set ai
set si

set t_Co=256

" Tab navigation like Firefox.
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
""inoremap <C-S-tab> <Esc>:tabprevious<CR>i
""inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Pretty bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = "jellybeans"

" Repeat.vim
Plug 'tpope/vim-repeat'

" Surround
Plug 'tpope/vim-surround'

" Fugitive (git)
Plug 'tpope/vim-fugitive'

" Tyepscript
Plug 'leafgarland/typescript-vim'

" Vinegar
Plug 'tpope/vim-vinegar'

let g:netrw_liststyle = 3
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize = 15
nnoremap <silent> <F9> :Vexplore<CR>

" Auto completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

let g:ycm_server_python_interpreter = '/usr/bin/python2'

" Close automatically {}
Plug 'Raimondi/delimitMate'

" Color the #FF00FF tags
Plug 'vim-scripts/colorizer'

" Comment evrything :D
Plug 'tpope/vim-commentary'

" Next val (Ctrl A Ctrl X)
Plug 'vim-scripts/nextval'

" Tag list (open with F8)
Plug 'vim-scripts/taglist.vim'

" Bind tags to F8
nnoremap <silent> <F8> :TlistToggle<CR>

" Monokai theme
Plug 'tomasr/molokai'
Plug 'bf4/vim-dark_eyes'

" Javascript improvments
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
Plug 'crusoexia/vim-javascript-lib'

" Automatically opens popup menu for completions
Plug 'vim-scripts/AutoComplPop'

" Python ident
Plug 'vim-scripts/indentpython.vim'

" Auto complete with TAB
Plug 'ervandew/supertab'

" Edit GPG files
Plug 'jamessan/vim-gnupg'

" Pep8
Plug 'nvie/vim-flake8'
let g:flake8_show_in_file=1
let g:flake8_show_in_gutter=1
" to use colors defined in the colorscheme
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

" Auto run pep8 on python files
autocmd BufWritePost *.py call Flake8()

" Fold python
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview = 0
" let g:SimpylFold_fold_import = 0
" let g:SimpylFold_fold_docstring	= 0
set foldlevelstart=1000 " Unfold everything by default

" Indent line
Plug 'Yggdroot/indentLine'

" Hardmode
Plug 'wikitopian/hardmode'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Disable escape
" inoremap <esc> <nop>

" disable :wq
cabbrev wq w

" For vim markdown (both)
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Initialize plugin system
call plug#end()

" colorscheme molokai
colorscheme dark_eyes

" Speed up macro
set nolazyredraw

