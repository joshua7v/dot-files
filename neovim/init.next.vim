call plug#begin(stdpath('data') . '/plugged')

if exists(":PlugInstall")

" colorscheme
Plug 'mhartington/oceanic-next'

" syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }

" edit
" Plug 'github/copilot.vim'
" Plug 'windwp/nvim-autopairs'
" Plug 'jiangmiao/auto-pairs'
" Plug 'cohama/lexima.vim'
Plug 'mhartington/formatter.nvim'
Plug 'haya14busa/vim-asterisk'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular', { 'on': ['Tabularize'] }
Plug 'ntpeters/vim-better-whitespace', { 'on': ['StripWhitespace'] }
Plug 'Yggdroot/indentLine'
Plug 'justinmk/vim-dirvish'
Plug 'roman/golden-ratio', { 'on': ['<Plug>(golden_ratio_resize)'] }
Plug 'haya14busa/vim-edgemotion'
Plug 'justinmk/vim-sneak'
Plug 'tomtom/tcomment_vim'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'Shougo/vinarise.vim', { 'on': ['Vinarise'] }
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'lfv89/vim-interestingwords'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'svermeulen/vim-subversive'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'mattn/emmet-vim'
Plug 'tenfyzhong/vim-gencode-cpp', { 'for': ['c', 'cpp'] }

" project
Plug 'rhysd/devdocs.vim', { 'on': ['DevDocsAllUnderCursor'] }
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fugitive'
" Plug 'kkoomen/vim-doge', { 'on': ['DogeGenerate'] }
Plug 'rhysd/git-messenger.vim'
" Plug 'Shougo/echodoc.vim'
" Plug 'habamax/vim-godot'

" miscellaneous
Plug 'skywind3000/vim-terminal-help'
Plug 'romainl/vim-qf'
Plug 'yssl/QFEnter'
Plug 'vim-scripts/BufOnly.vim', { 'on': ['BufOnly'] }
Plug 'kopischke/vim-stay'
Plug 'pbrisbin/vim-mkdir'
Plug 'tyru/open-browser.vim', { 'on': ['<Plug>(openbrowser-smart-search)'] }
Plug 'guns/xterm-color-table.vim', { 'on': ['XtermColorTable'] }
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'inside/vim-search-pulse'
Plug 'vim-scripts/DrawIt', { 'on': ['DrawIt'] }
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'dstein64/vim-startuptime', { 'on': ['StartupTime'] }
Plug 'mhinz/vim-signify'

endif

call plug#end()

function! s:is_installed(plug)
  if isdirectory(g:plugs[a:plug].dir)
    return 1
  endif
  return 0
endfunction

" ---------------
" better defaults
" ---------------

if &compatible
  set nocompatible
endif

filetype plugin indent on
syntax on

let g:mapleader = ','
set nocompatible

set inccommand=nosplit
set confirm
set background=dark
set t_ut=
set history=200           " history: number of command-lines remembered
set autoread              " auto reload file after being modified
set shortmess=atIcF       " do not show initial page
set nobackup
set noswapfile
set nowritebackup
set updatetime=300

" set cursorcolumn          " highlight current column
" set cursorline            " highlight current line
set t_ti= t_te=           " alway show the content on the screen after exist VIM
set mouse-=a              " disable mouse
set selection=inclusive   " set selection=exclusive
set selectmode=mouse,key
set title                 " change the terminal's title
set novisualbell          " don't beep
set noerrorbells          " don't beep
set t_vb=
set tm=500
set nostartofline         " keep cursor postion when switching between buffers

"set list
"set listchars=tab:›\ ,trail:•,extends:❯,precedes:❮

set showmatch         " show matched brackets
set mat=2             " How many tenths of a second to blink when matching brackets

set hlsearch          " highlight the searching words
set ignorecase        " ingnore case when do searching

set incsearch         " instant search
set smartcase         " ignore case if search pattern is all lowercase, case-sensitive otherwise

set foldenable        " code folding
set foldlevel=99

set smartindent       " Do smart autoindenting when starting a new line
set autoindent        " always set autoindenting on

set tabstop=4         " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4      " number of spaces to use for autoindenting
set softtabstop=4     " Number of spaces that a <Tab> counts for while performing editing operations
set smarttab
set expandtab         " when typing <Tab>, use <space> instead
set shiftround        " use multiple of shiftwidth when indenting with '<' and '>'

set hidden            " A buffer becomes hidden when it is abandoned
set wildmode=longest:full,full
set ttyfast

set ruler          " show the current line number and column number
set showcmd        " show the current typing command
set noshowmode     " Show current mode
set scrolloff=0    " Set 7 lines to the cursor - when moving vertically using j/k

" File encode:encode for varied filetype
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8

set ffs=unix,dos,mac         " Use Unix as the standard file type
set formatoptions+=m
set formatoptions+=B         " When joining lines, don't insert a space between two multi-byte characters.
set completeopt=longest,menu,noselect " behaviour of insert mode completion
set completeopt=noinsert,menuone,noselect
set wildmenu                 " auto complete command
set path+=**
set wildignore=**.o,*~,.swp,*.bak,*.pyc,*.class " Ignore compiled files

set viminfo^=% " Remember info about open buffers on close
set magic      " For regular expressions turn magic on

set backspace=eol,start,indent               " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l
set pastetoggle=<F5>                         " when in insert mode, toggle between 'paste' and 'nopaste'

set foldmethod=manual
set shortmess+=c
set tabline=
set guitablabel=%t

set nowrap " disable wrap
set number " show line number
set relativenumber " show relative line number
set numberwidth=3
" set re=1
autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

set omnifunc=syntaxcomplete#Complete
set signcolumn=yes
set splitbelow
set textwidth=0

" set pastetoggle=<c-x>

let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'

if has('clipboard')
  set clipboard& clipboard+=unnamedplus
endif

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

if has('macunix')
  " pbcopy for OSX copy/paste
  " vnoremap <C-x> :!pbcopy<cr>
  " vnoremap <C-c> :w !pbcopy<cr><cr>
endif

" Close popup menu when leave insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif

" -------------------
" appearance settings
" -------------------

set t_Co=256

if has('termguicolors')
    set termguicolors
endif

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

function! s:patch_oceanic_next_colors()
  hi StatusLine ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  hi StatusLineNC ctermfg=235 ctermbg=145 guibg=#65737e guifg=#1b2b34
  hi TabLine cterm=NONE ctermfg=145 ctermbg=235 gui=NONE guibg=#1b2b34 guifg=#65737e
  hi TabLineSel ctermfg=145 ctermbg=345 guibg=#1b2b34 guifg=#ff5555
  hi TabLineFill ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  hi PmenuSel ctermbg=145 guibg=#ff5555
  hi WildMenu ctermbg=145 guibg=#ff5555
  hi Type ctermfg=221 guifg=#fac863 term=NONE gui=NONE

  hi DiffAdd ctermfg=2 ctermbg=0 guifg=#A3BE8C guibg=#2E3440
  hi DiffChange ctermfg=3 ctermbg=0 guifg=#EBCB8B guibg=#2E3440
  hi DiffDelete ctermfg=1 ctermbg=0 guifg=#BF616A guibg=#2E3440
  hi DiffText ctermfg=4 ctermbg=0 guifg=#81A1C1 guibg=#2E3440
  hi! link DiffAdded DiffAdd
  hi! link DiffChanged DiffChange
  hi! link DiffRemoved DiffDelete
  hi! link TermCursor Cursor
  hi! link TargetWord TabLineSel
  hi Search ctermfg=0 ctermbg=6 guibg=#88C0D0 guifg=#3B4252 gui=none
endfunction
autocmd! ColorScheme OceanicNext call s:patch_oceanic_next_colors()

function s:SetCursorLine()
  set cursorline
  hi cursorline cterm=none ctermbg=235
endfunction

autocmd VimEnter * call s:SetCursorLine()

if s:is_installed('oceanic-next')
  colorscheme OceanicNext
else
  colorscheme desert
endif

" custom keyword highlighting
hi TodoGroup cterm=bold ctermfg=233 ctermbg=210 gui=bold guifg=#132132 guibg=#fd8489
hi NoteGroup ctermfg=210 ctermbg=235 guifg=#fd8489 guibg=#3a4b5c
hi ImportantGroup ctermfg=233 ctermbg=222 guifg=#132132 guibg=#fedf81
" call matchadd("TodoGroup", 'TODO')
" call matchadd("NoteGroup", 'NOTE')
" call matchadd("ImportantGroup", 'IMPORTANT')
" au BufNewFile,BufRead * set syntax=on

augroup vimrc_todo
    au!
    au Syntax * syn match sTodo /TODO/ containedin=.*Comment,vimCommentTitle
    au Syntax * syn match sNote /NOTE/ containedin=.*Comment,vimCommentTitle
    au Syntax * syn match sImportant /IMPORTANT/ containedin=.*Comment,vimCommentTitle
augroup END

hi def link sTodo TodoGroup
hi def link sNote NoteGroup
hi def link sImportant ImportantGroup

function! GetBufName()
  let bufname = expand('%:~:.')
  if (bufname) == ''
      let bufname = '[no name]'
  endif
  return bufname
endfunction

" tabline
if exists('+showtabline')
  function! Tabline()
    let s = ''
    for i in range(tabpagenr('$'))
      let tab = i + 1
      let winnr = tabpagewinnr(tab)
      let buflist = tabpagebuflist(tab)
      let bufnr = buflist[winnr - 1]
      let bufname = bufname(bufnr)
      let bufmodified = getbufvar(bufnr, "&mod")

      let s .= '%' . tab . 'T'
      let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
      let s .= '[' . tab .']'
      let s .= (bufname != '' ? ' '. fnamemodify(bufname, ':t') . ' ' : ' - ')

      if bufmodified
        let s .= '[+] '
      endif
    endfor

    let s .= '%#TabLineFill#'
    if (exists("g:tablineclosebutton"))
      let s .= '%=%999XX'
    endif
    return s
  endfunction
  set tabline=%!Tabline()
endif

" statusline
if has('statusline')
  set laststatus=2
  " set statusline=%{getcwd()}
  " set statusline+=\ %<%f
  " set statusline+=%F
  set statusline+=%{GetBufName()}
  set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}
  set statusline+=%{(&bomb?\\",BOM\\":\\"\\")}
  set statusline+=\ %{&ff}\ %y
  set statusline+=\ %m%r%w
  " set statusline+=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}\ 
  " set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}\ 
  " set statusline+=%{coc#status()}\ 
  set statusline+=%-14.(%l/%L,%c%V%)\ %p%%
endif

hi clear SpellBad
hi SpellBad term=underline cterm=underline

" ----------------
" plugin setttings
" ----------------

" vim-textobj-entire
omap <silent> ae <Plug>(textobj-entire-a)
xmap <silent> ae <Plug>(textobj-entire-a)
omap <silent> ie <Plug>(textobj-entire-i)
xmap <silent> ie <Plug>(textobj-entire-i)

" vim-textobj-indent
omap <silent> ai <Plug>(textobj-indent-a)
xmap <silent> ai <Plug>(textobj-indent-a)
omap <silent> ii <Plug>(textobj-indent-i)
xmap <silent> ii <Plug>(textobj-indent-i)
omap <silent> aI <Plug>(textobj-indent-same-a)
xmap <silent> aI <Plug>(textobj-indent-same-a)
omap <silent> iI <Plug>(textobj-indent-same-i)
xmap <silent> iI <Plug>(textobj-indent-same-i)

"
" nnoremap <silent> <c-p>     :<C-u>CocList files<cr>
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" nnoremap <silent> <space>y  :<C-u>CocList --normal yank<cr>
" nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<cr>
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" nnoremap <silent> <space>p  :<C-u>CocListResume<cr>
" nnoremap <silent> <space>m  :<C-u>CocList --normal marks<cr>
" nnoremap <silent> <space>h  :<C-u>CocList --normal searchhistory<cr>
" nnoremap <silent> <space>k  :<C-u>CocList --normal maps<cr>
" nnoremap <silent> <space>q  :<C-u>CocList --normal floaterm<cr>
" nnoremap <silent> <space>z  :<C-u>CocList --normal tasks<cr>
" nnoremap <silent> <space>l  :<C-u>CocList -I lines<cr>
" nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<cr>
" " nnoremap <silent> <space>fl :<c-u>CocList --normal explPresets<cr>
" nnoremap <silent> <space><leader>  :<C-u>CocList --normal project<cr>
"
" command! -nargs=0 ColorPresentation :call CocAction('colorPresentation')
" command! -nargs=0 PickColor :call CocAction('pickColor')
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
" command! -nargs=0 Format :call CocAction('format')
" command! -nargs=? Fold :call CocAction('fold', <f-args>)
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" command! -nargs=+ -complete=custom,s:GrepArgs Rgl exe 'CocList grep '.<q-args>
" command! -nargs=0 Rg exe 'CocList -I grep'
" command! -nargs=0 TODO exe 'CocList --normal grep //\ TODO'
" command! -nargs=0 NOTE exe 'CocList --normal grep //\ NOTE'
" command! -nargs=0 IMPORTANT exe 'CocList --normal grep //\ IMPORTANT'
"
" hi def link CocFadeOut NonText

" editorconfig-vim
if s:is_installed('editorconfig-vim')
  " respect .editorconfig
else
  let &colorcolumn="121"

  autocmd FileType python,elm,go,c,cpp,h set tabstop=4 shiftwidth=4 expandtab ai
  autocmd FileType vim,javascript,javascript.jsx,typescript,typescript.tsx,json,css,scss,html,yaml,md set tabstop=2 shiftwidth=2 expandtab ai
endif

autocmd BufNewFile,BufRead settings.json      set ft=jsonc
autocmd BufNewFile,BufRead .tern-project  setfiletype json
autocmd BufNewFile,BufRead .jsbeautifyrc  setfiletype json
autocmd BufNewFile,BufRead .eslintrc      setfiletype json
autocmd BufNewFile,BufRead .babelrc       setfiletype json
autocmd BufNewFile,BufRead .luacompleterc setfiletype json
autocmd BufNewFile,BufRead .prettierrc    setfiletype json
autocmd BufNewFile,BufRead .jscsrc        setfiletype json
autocmd BufNewFile,BufRead *.wxml         setfiletype xml
" autocmd BufNewFile,BufRead *.jsx          set ft=javascript.jsx
" autocmd BufNewFile,BufRead *.tsx          set ft=typescript.tsx
autocmd BufNewFile,BufRead *.ex               set ft=elixir
autocmd BufNewFile,BufRead *.exs              set ft=elixir
autocmd BufNewFile,BufRead *.eex              set ft=eelixir
autocmd BufNewFile,BufRead *.vs,*.fs          set ft=glsl
autocmd BufNewFile,BufRead *.tpl              set ft=html
autocmd BufNewFile,BufRead *.plist            set ft=xml
" autocmd BufNewFile,BufRead *.mm               set ft=objective-cpp
autocmd BufNewFile,BufRead tsconfig.json      set ft=jsonc
autocmd BufNewFile,BufRead tslint.json        set ft=jsonc
autocmd BufNewFile,BufRead coc-settings.json  set ft=jsonc
autocmd BufNewFile,BufRead settings.json      set ft=jsonc

autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" vim-asterisk
let g:asterisk#keeppos = 1

map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" echodoc.vim
let g:echodoc#enable_at_startup = 1

" vim-sneak
let g:sneak#label = 1
xmap z <Plug>Sneak_s
xmap Z <Plug>Sneak_S

" tabular
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:<CR>
vmap <leader>a: :Tabularize /:<CR>
nmap <leader>a\" :Tabularize /\"<CR>
vmap <leader>a\" :Tabularize /\"<CR>
nmap <leader>aa :Tabularize /
vmap <leader>aa :Tabularize /

" vim-better-whitespace
let g:better_whitespace_filetypes_blacklist = ['diff', 'gitcommit', 'unite', 'qf', 'help', 'far_vim']
let g:better_whitespace_filetypes_verbosity = 1
let g:better_whitespace_guicolor = '#6D6D6D'
let g:better_whitespace_ctermcolor = '244'
nnoremap <leader><space> :StripWhitespace<cr>

" bufonly.vim
nnoremap <silent> qo :BufOnly<cr>
nnoremap <silent> qoo :BufOnly!<cr>"

" indentline
let g:indentLine_color_term = 145
let g:indentLine_color_gui = '#ff5555'
let g:indentLine_enabled = 0
nnoremap <leader>i :IndentLinesToggle<cr>

" vim-dirvish
let g:dirvish_relative_paths = 0
let g:dirvish_mode = ':sort ,^.*[\/],'

nmap <leader>x <Plug>(dirvish_split_up)
nmap <leader>d <Plug>(dirvish_vsplit_up)

autocmd FileType dirvish silent keeppatterns g@\v/\.[^\/]+/?$@d _

augroup dirvish_config
  autocmd!
  autocmd FileType dirvish silent! unmap <buffer> <C-p>
  autocmd FileType dirvish
    \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
    \ |xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
augroup END

let g:loaded_netrwPlugin = 1
command! -nargs=? -complete=dir Explore Dirvish <args>
command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>

" golden-ratio
let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_autocommand = 0

nmap <silent><leader>z <Plug>(golden_ratio_resize)

" vim-edgemotion
nmap <c-j> <Plug>(edgemotion-j)
nmap <c-k> <Plug>(edgemotion-k)
vmap <c-j> <Plug>(edgemotion-j)
vmap <c-k> <Plug>(edgemotion-k)

" git-messenger.vim
nmap gm <Plug>(git-messenger)

" vim-stay
set viewoptions=cursor,folds,slash,unix

" vim-visual-multi
let g:VM_Selection_hl       = 'Cursor'
let g:VM_Mono_Cursor_hl     = 'Cursor'
let g:VM_Ins_Mode_hl        = 'Cursor'
let g:VM_Normal_Cursor_hl   = 'Cursor'

let g:VM_maps               = {}
let g:VM_maps['Find Under'] = '<C-h>'

" asyncrun.vim
let g:asyncrun_bell = 1

" noremap <leader>q :call asyncrun#quickfix_toggle(30)<cr>
noremap <leader>ar :AsyncRun -mode=term -pos=bottom 
" autocmd FileType c,cpp,cmake noremap <leader>m :AsyncRun -mode=term -pos=bottom cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES -B build .<cr>
" autocmd FileType c,cpp,cmake noremap <leader>c :AsyncRun -mode=term -pos=bottom -cwd=build make<cr>
" autocmd FileType c,cpp,cmake noremap <leader>cc :AsyncRun -mode=term -pos=bottom make -cwd=build make clean<cr>

" augroup vimrc
" autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(50, 1)
" augroup END

" asynctasks.vim
let g:asynctasks_rtp_config = 'asynctasks/tasks.ini'
let g:asyncrun_open = 24
let g:asynctasks_term_pos = 'bottom'
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg', '.projectionist.json', '.editorconfig', 'compile_commands.json']
let g:asynctasks_term_reuse = 1
let g:asynctasks_term_focus = 1

noremap <leader>q :call asyncrun#quickfix_toggle(24)<cr>
noremap <leader>r :AsyncTask project-run<cr>
noremap <leader>b :AsyncTask project-build<cr>
" noremap <leader>x :AsyncTask project-test<cr>
" noremap <leader>c :AsyncTask project-clean<cr>
command! -nargs=0 Test exe 'AsyncTask project-test'
command! -nargs=0 Clean exe 'AsyncTask project-clean'

" autocmd BufWritePost *.c,*.cpp AsyncTask project-build

" vim-projectionist
augroup user_projectionist
  autocmd!
  autocmd FileType dirvish call ProjectionistDetect(resolve(expand('%:p')))
augroup END

" undotree
if has('persistent_undo')
  set undofile
  set undolevels=1000
  set undoreload=10000
  set undodir=~/.undodir/
endif

nnoremap <leader>ud :UndotreeToggle<cr>

" MatchTagAlways
let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'xhtml' : 1,
  \ 'xml' : 1,
  \ 'jinja' : 1,
  \ 'javascript': 1,
  \ 'javascript.jsx': 1,
  \ 'typescript.tsx': 1,
  \ 'typescriptreact': 1
  \}

" vim-qf
let g:qf_max_height = 24
let g:qf_auto_resize = 0
" nmap <leader>q <Plug>(qf_qf_toggle_stay)

" open-browser.vim
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" vim-interestingwords
let g:interestingWordsRandomiseColors = 0
let g:interestingWordsDefaultMappings = 0
let g:interestingWordsGUIColors = ['#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['121', '211', '137', '214', '222']

nnoremap <silent> <leader>w :call InterestingWords('n')<cr>
vnoremap <silent> <leader>w :call InterestingWords('v')<cr>
nnoremap <silent> <leader>W :call UncolorAllWords()<cr>
nnoremap <silent> ]w :call WordNavigation(1)<cr>
nnoremap <silent> [w :call WordNavigation(0)<cr>

" splitjoin.vim
let g:splitjoin_join_mapping = ''
let g:splitjoin_split_mapping = ''
nmap gJ :SplitjoinJoin<CR>
nmap gS :SplitjoinSplit<CR>

" sideways.vim
nnoremap <leader>h :SidewaysLeft<cr>
nnoremap <leader>l :SidewaysRight<cr>
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

" vim-doge
let g:doge_enable_mappings = 0
" nnoremap <leader>dd :DogeGenerate<cr>
command! -nargs=0 GDoc :DogeGenerate<cr>

" vim-subversive
" nmap s <plug>(SubversiveSubstitute)
" nmap ss <plug>(SubversiveSubstituteLine)
" nmap S <plug>(SubversiveSubstituteToEndOfLine)

nmap <space>s <plug>(SubversiveSubvertRange)
xmap <space>s <plug>(SubversiveSubvertRange)
nmap <space>ss <plug>(SubversiveSubvertWordRange)

xmap p <plug>(SubversiveSubstitute)
xmap P <plug>(SubversiveSubstitute)

" vim-search-pulse
let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 400

" ultisnips
let g:UltiSnipsSnippetDirectories  = [$HOME.'/.snippets']
let g:UltiSnipsExpandTrigger       = "<Plug>(ultisnips_expand_or_jump)"
let g:UltiSnipsJumpForwardTrigger  = "<Plug>(ultisnips_expand_or_jump)"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

function! UltiSnipsExpandOrJumpOrTab()
call UltiSnips#ExpandSnippetOrJump()
if g:ulti_expand_or_jump_res > 0
    return ""
else
    return "\<Tab>"
endif
endfunction

" inoremap <silent> <expr> <Tab> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_try_expand)")
" inoremap <silent> <Plug>(ultisnips_try_expand) <C-R>=UltiSnipsExpandOrJumpOrTab()<CR>
" snoremap <silent> <Tab> <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>

" emmet-vim
let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_settings = {
\ 'javascript.jsx' : {
\   'extends' : 'jsx'
\  },
\ 'typescript.tsx' : {
\   'extends' : 'jsx'
\  },
\ 'javascript': {
\   'extends': 'jsx'
\ }
\}

" vim-terminal-help
let g:terminal_key = '<leader>t'
let g:terminal_cwd = 2
let g:terminal_list = 0
let g:terminal_height = 20
let g:terminal_edit = 'drop'

" devdocs.vim
let g:devdocs_filetype_map = {
  \   'javascriptreact': 'react',
  \   'typescriptreact': 'react',
  \ }
command! -nargs=0 Doc :DevDocsAllUnderCursor

" vim-signify
nmap ]h <plug>(signify-next-hunk)
nmap [h <plug>(signify-prev-hunk)

" omap ih <plug>(signify-motion-inner-pending)
" xmap ih <plug>(signify-motion-inner-visual)
" omap ah <plug>(signify-motion-outer-pending)
" xmap ah <plug>(signify-motion-outer-visual)

" vim-gencode-cpp
" noremap <leader>tdc :GenDeclaration<cr>
" noremap <leader>tdd :GenDefinition<cr>
noremap <leader>` :GenDefinition<cr>

" tcomment_vim
" nmap <c-_><c-_> :TComment<cr>
" nmap gcc :TComment<cr>
" vmap gc :TComment<cr>
" nmap gca :TCommentAs 
" vmap gca :TCommentAs 
let g:tcomment#filetype#guess = 1
let g:tcomment#filetype#guess_typescriptreact = 1

" ------------
" key bindings
" ------------
nnoremap <leader>ec :tabnew $MYVIMRC
tnoremap <Esc> <C-\><C-n>
nnoremap <leader><leader> <C-^>
nnoremap <leader>/ :Rg<space>
" inoremap jj <ESC>

" move visual block
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

" maintain visual mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

nnoremap U <C-r>

nnoremap == <c-w>=
nnoremap =v <c-w>_
nnoremap =h <c-w><bar>

" keep search pattern at the center of the screen
" nnoremap <silent> n nzz
" nnoremap <silent> N Nzz
" nnoremap <silent> * *zz
" nnoremap <silent> # #zz
" nnoremap <silent> g* g*zz

noremap <F1> <esc>

" no highlight
nnoremap <silent><esc> :noh<return><esc>
nnoremap <silent><cr> :noh<cr>

" speed up scrolling of the viewport slightly
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" noremap j gj
" noremap k gk

nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

nnoremap tp :tabprev<cr>
nnoremap tn :tabnext<cr>

nnoremap <leader>; A;<ESC>
nnoremap <leader>cc A,<ESC>
nnoremap <leader>. A.<ESC>
nnoremap <leader>\ A \<ESC>
" nnoremap <leader>e :tabnew 
" nnoremap <leader>ee :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>ef :e <C-R>=expand('%')<CR>

" nnoremap <leader><leader> <C-^>
nnoremap qq :bd<cr>

command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'
command! GCompileCommands execute '!xmake project -k compile_commands'

" ------------
" gui settings
" ------------

set guifont=Victor\ Mono:h14
highlight Cursor guifg=white guibg=#ff5555
set guicursor=n-v-c:block-Cursor,i-ci-ve:ver30-Cursor

" nvim-treesitter
" --------------------------------------------------------------------
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "c",
    "cpp",
    "css",
    "elixir",
    "heex",
    "gdscript",
    "go",
    "graphql",
    "html",
    "json",
    "jsonc",
    "javascript",
    "lua",
    "scss",
    "swift",
    "typescript",
    "tsx",
    "yaml",
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescriptreact" }
EOF

" nvim-lspconfig
" --------------------------------------------------------------------
lua <<EOF
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
})
EOF

nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>

" nvim-cmp
" --------------------------------------------------------------------
lua <<EOF
-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      -- behavior = cmp.ConfirmBehavior.Replace,
      -- select = true,
    })
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  }, {
    { name = 'path' }
  })
})

local nvim_lsp = require('lspconfig')

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
    title = ""
  }
  vim.lsp.buf.execute_command(params)
end

function goimports(timeout_ms)
  local context = { only = { "source.organizeImports" } }
  vim.validate { context = { context, "t", true } }

  local params = vim.lsp.util.make_range_params()
  params.context = context

  -- See the implementation of the textDocument/codeAction callback
  -- (lua/vim/lsp/handler.lua) for how to do this properly.
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
  if not result or next(result) == nil then return end
  local actions = result[1].result
  if not actions then return end
  local action = actions[1]

  -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
  -- is a CodeAction, it can have either an edit, a command or both. Edits
  -- should be executed first.
  if action.edit or type(action.command) == "table" then
    if action.edit then
      vim.lsp.util.apply_workspace_edit(action.edit)
    end
    if type(action.command) == "table" then
      vim.lsp.buf.execute_command(action.command)
    end
  else
    vim.lsp.buf.execute_command(action)
  end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

----------------------------------------------------------------------

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "typescript-language-server", "--stdio" },
  commands = {
    OR = {
      organize_imports,
      description = 'Organize Imports'
    }
  }
}

-- npm i -g vscode-langservers-extracted
nvim_lsp.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
nvim_lsp.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
nvim_lsp.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- NOTE: objc treesitter parser is not ready
if vim.fn.has("mac") == 1 then
  nvim_lsp.sourcekit.setup {
    filetypes = { "swift" },
    cmd = { "xcrun", "sourcekit-lsp" },
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
nvim_lsp.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = vim.fn.has("mac") == 1 and { "xcrun", "clangd", "--background-index" } or { "clangd", "--background-index" },
  single_file_support = true,
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = false,
        underline = false,
        update_in_insert = false,
      }
    ),
  }
}

nvim_lsp.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls", "serve" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  commands = {
    OR = {
      goimports,
      description = 'Organize Imports'
    }
  }
}

-- https://github.com/elixir-lsp/elixir-ls/releases/download/v0.8.1/elixir-ls.zip
nvim_lsp.elixirls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "/Users/joshua/elixir-ls/language_server.sh" },
}

nvim_lsp.gdscript.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
EOF

" vsnip
" --------------------------------------------------------------------
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

" lspsaga
" --------------------------------------------------------------------
lua <<EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = 'E',
  warn_sign = 'W',
  hint_sign = 'H',
  infor_sign = 'I',
  border_style = "round",
  code_action_prompt = {
    enable = false
  }
}
EOF

nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent> gp :Lspsaga preview_definition<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> <leader>ee :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent><leader>ac :Lspsaga code_action<CR>
vnoremap <silent><leader>ac :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><leader>rn :Lspsaga rename<CR>
nnoremap <silent> <c-q> :Lspsaga open_floaterm<CR>
tnoremap <silent> <c-q> <C-\><C-n>:Lspsaga close_floaterm<CR>

" formatter.nvim
" --------------------------------------------------------------------
lua <<EOF
function format_prettier()
   return {
     exe = "prettier",
     args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
     stdin = true
   }
end

function clang_formatter()
  return {
    exe = "clang-format",
    args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
    stdin = true,
    cwd = vim.fn.expand('%:p:h')  -- Run clang-format in cwd of the file.
  }
end

require('formatter').setup {
  logging = false,
  filetype = {
    c = { clang_formatter },
    cpp = { clang_formatter },
    objcpp = { clang_formatter },
    json = { format_prettier },
    markdown = { format_prettier },
    html = { format_prettier },
    css = { format_prettier },
    scss = { format_prettier },
    less = { format_prettier },
    javascript = { format_prettier },
    typescript = { format_prettier },
    typescriptreact = { format_prettier },
  }
}
EOF
nnoremap <silent> <space><space> :Format<CR>

" nvim-telescope
" --------------------------------------------------------------------
lua << EOF
require('telescope').setup{
  defaults = {},
  pickers = {},
  extensions = {}
}
require'telescope'.load_extension('project')
EOF

nnoremap <space>g <cmd>Telescope live_grep<cr>
nnoremap <space>b <cmd>Telescope buffers initial_mode=normal<cr>
nnoremap <space>u <cmd>Telescope oldfiles cwd_only=true initial_mode=normal<cr>
nnoremap <space>a <cmd>Telescope lsp_workspace_diagnostics initial_mode=normal<cr>
nnoremap <space>p <cmd>Telescope resume initial_mode=normal<cr>
nnoremap <space>l <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <space>f <cmd>Telescope find_files<cr>
nnoremap <space>o <cmd>Telescope lsp_document_symbols initial_mode=normal<cr>
nnoremap <space><leader> <cmd>Telescope project<cr>
command! -nargs=0 TODO exe 'Telescope grep_string search=//\ TODO initial_mode=normal'
command! -nargs=0 NOTE exe 'Telescope grep_string search=//\ NOTE initial_mode=normal'
command! -nargs=0 IMPORTANT exe 'Telescope grep_string search=//\ IMPORTANT initial_mode=normal'

" nvim-autopairs
" --------------------------------------------------------------------
" lua <<EOF
" require('nvim-autopairs').setup({
"   disable_filetype = { "TelescopePrompt" },
" })
" EOF
