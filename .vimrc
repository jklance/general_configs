" General appearance
set number
colorscheme molokai
set modelines=0
set laststatus=2
set enc=utf-8
set bg=dark
set visualbell
set cmdheight=2
set showcmd

" Statusline
set statusline=[%01.2n]                                 " buffer number
set statusline+=\ %#error#%.50F%*                       " file name
set statusline+=\ [%{&ff}]                              " file format
set statusline+=\ %y                                    " file type
set statusline+=\ %m%r%h                                " modified/readonly/helpfile flags
set statusline+=%=                                      " left/right separator
set statusline+=Line\:\ %#todo#%00001.4l/%00001.4L%*    " line number/total lines
set statusline+=\ (%001.3p%%)                           " percent through file
set statusline+=\ \ Col\:\ %#todo#%0001.3c%*            " cursor column location

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
if v:version >= 703
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
map <C-r> :set relativenumber<CR>


