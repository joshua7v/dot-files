if &compatible
  set nocompatible
endif

filetype plugin indent on
syntax enable

let g:mapleader = ','
set nocompatible

set confirm
set background=dark
set history=200
set autoread
set nobackup
set noswapfile


set mouse-=a
set selection=inclusive
set selectmode=mouse,key
set title
set novisualbell
set noerrorbells
set t_vb=
set tm=500
set nostartofline
set showmatch
set mat=2

set hlsearch
set ignorecase

set incsearch
set smartcase

set foldenable
set foldlevel=99

set smartindent
set autoindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround

set hidden
set ttyfast

set ruler
set showcmd
set noshowmode
set scrolloff=0

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8

set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B
set wildmenu
set wildignore=**.o,*~,.swp,*.bak,*.pyc,*.class

set viminfo^=%
set magic

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set pastetoggle=<F5>

set foldmethod=manual
set tabline=
set guitablabel=%t

set nowrap
set number
set numberwidth=3
"set relativenumber
"autocmd InsertEnter * :set norelativenumber
"autocmd InsertLeave * :set relativenumber

set splitbelow

set t_Co=256

colorscheme desert

inoremap jj <ESC>

nnoremap <Leader>; A;<ESC>
nnoremap <Leader>c A,<ESC>
nnoremap <Leader>. A.<ESC>
nnoremap <Leader>\ A \<ESC>
nnoremap <Leader>e :tabnew
nnoremap <Leader>ee :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>ef :e <C-R>=expand('%')<CR>
nnoremap <Leader>ec :tabnew ~/.config/nvim/init.vim
nnoremap tp :tabprev<cr>
nnoremap tn :tabnext<cr>

noremap j gj
noremap k gk

nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

nnoremap <silent><cr> :noh<cr>

noremap <F1> <esc>

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

noremap <leader><leader> :messages<cr>

nnoremap U <C-r>

vnoremap < <gv
vnoremap > >gv

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

function s:SetCursorLine()
  set cursorline
  hi cursorline cterm=none ctermbg=235
endfunction
autocmd VimEnter * call s:SetCursorLine()

hi LineNr ctermfg=darkgrey guifg=#777777
hi MatchParen ctermfg=black
