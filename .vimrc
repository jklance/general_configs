" General appearance
set number
colorscheme molokai
set modelines=0
set statusline=[%01.2n]\ %f\ %y\ %m%r%h%=Line\:\ %00001.4l/%00001.4L\ (%001.3p%%)\ \ Col\:\ %0001.3c
set laststatus=2
set enc=utf-8
set bg=dark
set visualbell
set cmdheight=2
set showcmd

" Functionality
set pastetoggle=<F2>
if has("mouse")
    set mouse=v
endif
set wildmenu
set wildmode=full
set wildignore=*.o,*.ogj,*.exe,*.dmg,*.app,*.zip,*.tar,*.gz,*.tgz,*.jpg,*.gif,*.png,*.jpeg
set backspace=indent,eol,start whichwrap+=<,>,[,]
vnoremap <BS> d
if version >= 730
    set nocompatible
    set relativenumber
endif

" Autocommand
if has("autocmd") 
    au BufReadPost * if &modifiable | retab | endif 
    au BufEnter * lcd %:p:h
endif

" Syntax setup
set showmatch
syntax enable

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartindent
set autoindent
set nowrap

" Fix VI's pedantic search
set ignorecase
set smartcase

" Plugins
call pathogen#infect('plugins')

" Remaps
" Stupid F1 (how did I never think of this?)
map <F1> <Esc>
imap <F1> <Esc>

map <C-n> :set invnu<CR>



