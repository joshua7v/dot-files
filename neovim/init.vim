call plug#begin(stdpath('data') . '/plugged')

if exists(":PlugInstall")

" colorscheme
Plug 'rhysd/vim-color-spring-night'

" edit
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/jsonc.vim', { 'for': ['jsonc'] }
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular', { 'on': ['Tabularize'] }
Plug 'ntpeters/vim-better-whitespace', { 'on': ['StripWhitespace'] }
Plug 'Yggdroot/indentLine', { 'on': ['IndentLinesToggle'] }
Plug 'justinmk/vim-dirvish'
Plug 'roman/golden-ratio', { 'on': ['<Plug>(golden_ratio_resize)'] }
Plug 'haya14busa/vim-edgemotion'
Plug 'justinmk/vim-sneak'
Plug 'tomtom/tcomment_vim', { 'on': ['TComment', 'TCommentAs'] }
Plug 'svermeulen/vim-yoink'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'Shougo/vinarise.vim', { 'on': ['Vinarise'] }
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'lfv89/vim-interestingwords'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'svermeulen/vim-subversive'
Plug 'tpope/vim-abolish'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'mattn/emmet-vim'

" project
Plug 'rhysd/devdocs.vim', { 'on': ['DevDocsAllUnderCursor'] }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'voldikss/vim-floaterm'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'liuchengxu/vista.vim', { 'on': ['Vista'] }
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'kkoomen/vim-doge', { 'on': ['DogeGenerate'] }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" miscellaneous
Plug 'vim-scripts/BufOnly.vim', { 'on': ['BufOnly'] }
Plug 'kopischke/vim-stay'
Plug 'pbrisbin/vim-mkdir'
Plug 'tyru/open-browser.vim', { 'on': ['<Plug>(openbrowser-smart-search)'] }
Plug 'skywind3000/vim-terminal-help'
Plug 'guns/xterm-color-table.vim', { 'on': ['XtermColorTable'] }
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'inside/vim-search-pulse'
Plug 'vim-scripts/DrawIt', { 'on': ['DrawIt'] }

" watching
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" deprecated
" Plug 'arcticicestudio/nord-vim'
" Plug 'mhartington/oceanic-next'
" Plug 'joshdick/onedark.vim'
" Plug 'tmhedberg/matchit'
" Plug 'ahonn/vim-fileheader'
" Plug 'tpope/vim-obsession', { 'on': ['Obsess'] }
" Plug 'reedes/vim-wordy', { 'on': ['Wordy'] }
" Plug 'MattesGroeger/vim-bookmarks', { 'on': ['BookmarkToggle'] }
" Plug 'mhinz/vim-signify'
" Plug 'lambdalisue/gina.vim'
" Plug 'beeender/Comrade'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'Konfekt/FastFold'
" Plug 'moll/vim-bbye', { 'on': ['Bdelete'] }
" Plug 'haya14busa/vim-operator-flashy'
" Plug 'chrisbra/Colorizer', { 'on': ['ColorToggle'] }
" Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" Plug 'tenfyzhong/vim-gencode-cpp', { 'for': ['cpp'] }
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown'] }
" Plug 'pechorin/any-jump.vim', { 'on': ['AnyJump', 'AnyJumpLastResults'] }

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

" let &colorcolumn="80,".join(range(120,999),",")
let &colorcolumn="120"

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

" if has('patch-7.4.1778')
"   set guicolors
" endif

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

function! s:patch_spring_night_colors()
  hi StatusLine ctermfg=235 ctermbg=230 guibg=#0f2134 guifg=#ff5555
  hi StatusLineNC ctermfg=235 ctermbg=230 guibg=#0f2134 guifg=#ff5555
  hi TabLine cterm=NONE ctermfg=145 ctermbg=235 gui=NONE guibg=#1b2b34 guifg=#65737e
  hi TabLineSel ctermfg=145 ctermbg=345 guibg=#1b2b34 guifg=#ff5555
  hi TabLineFill ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#0f2134
  " hi PmenuSel ctermbg=145 guibg=#ff5555 guifg=#2E3A4B
  " hi WildMenu ctermbg=145 guibg=#ff5555
  hi CursorLineNr term=NONE guifg=#e7d5ff ctermfg=189 guibg=#0f2134 ctermbg=238

  hi LineNr ctermfg=darkgrey guifg=#777777 guibg=#0f2134
  hi MatchParen ctermfg=black
  hi Cursor guifg=white guibg=#ff5555
  hi Search ctermfg=0 ctermbg=6 guibg=#88C0D0 guifg=#3B4252 gui=none
  hi! link SignColumn   LineNr
  hi! link ESearchMatch Search
  hi! link TermCursor Cursor
  hi! link TermCursorNC CursorNC

  hi DiffAdd ctermfg=2 ctermbg=0 guifg=#A3BE8C guibg=#0f2134
  hi DiffChange ctermfg=3 ctermbg=0 guifg=#EBCB8B guibg=#0f2134
  hi DiffDelete ctermfg=1 ctermbg=0 guifg=#BF616A guibg=#0f2134
  hi DiffText ctermfg=4 ctermbg=0 guifg=#81A1C1 guibg=#0f2134
  hi! link DiffAdded DiffAdd
  hi! link DiffChanged DiffChange
  hi! link DiffRemoved DiffDelete
endfunction
autocmd! ColorScheme spring-night call s:patch_spring_night_colors()

function s:SetCursorLine()
  set cursorline
  hi cursorline cterm=none ctermbg=235
endfunction

autocmd VimEnter * call s:SetCursorLine()

if s:is_installed('vim-color-spring-night')
  colorscheme spring-night
else
  colorscheme desert
endif

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'hint', 0)
    call add(msgs, 'H' . info['hint'])
  endif
  if get(info, 'information', 0)
    call add(msgs, 'I' . info['information'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  return join(msgs, ' ') . '' . get(g:, 'coc_status', '')
endfunction

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
  set statusline+=%=%{StatusDiagnostic()}\ 
  " set statusline+=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}\ 
  " set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}\ 
  " set statusline+=%{coc#status()}\ 
  set statusline+=%-14.(%l/%L,%c%V%)\ %p%%
endif

hi clear SpellBad
hi SpellBad term=underline cterm=underline
" hi clear SpellCap
" hi clear SpellRare
" hi clear SpellLocal
" hi SpellCap term=underline cterm=underline
" hi SpellRare term=underline cterm=underline
" hi SpellLocal term=underline cterm=underline

" deprecated colorscheme
" oceanic-next
" function! s:patch_oceanic_next_colors()
"   hi StatusLine ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
"   hi StatusLineNC ctermfg=235 ctermbg=145 guibg=#65737e guifg=#1b2b34
"   hi TabLine cterm=NONE ctermfg=145 ctermbg=235 gui=NONE guibg=#1b2b34 guifg=#65737e
"   hi TabLineSel ctermfg=145 ctermbg=345 guibg=#1b2b34 guifg=#ff5555
"   hi TabLineFill ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
"   hi PmenuSel ctermbg=145 guibg=#ff5555
"   hi WildMenu ctermbg=145 guibg=#ff5555
"   hi Type ctermfg=221 guifg=#fac863 term=NONE gui=NONE
"   " hi! link Special Keyword
"
"   hi DiffAdd ctermfg=2 ctermbg=0 guifg=#A3BE8C guibg=#2E3440
"   hi DiffChange ctermfg=3 ctermbg=0 guifg=#EBCB8B guibg=#2E3440
"   hi DiffDelete ctermfg=1 ctermbg=0 guifg=#BF616A guibg=#2E3440
"   hi DiffText ctermfg=4 ctermbg=0 guifg=#81A1C1 guibg=#2E3440
"   hi! link DiffAdded DiffAdd
"   hi! link DiffChanged DiffChange
"   hi! link DiffRemoved DiffDelete
"
"   let s:nord0_gui = "#2E3440"
"   let s:nord1_gui = "#3B4252"
"   let s:nord2_gui = "#434C5E"
"   let s:nord3_gui = "#4C566A"
"   let s:nord4_gui = "#D8DEE9"
"   let s:nord5_gui = "#E5E9F0"
"   let s:nord6_gui = "#ECEFF4"
"   let s:nord7_gui = "#8FBCBB"
"   let s:nord8_gui = "#88C0D0"
"   let s:nord9_gui = "#81A1C1"
"   let s:nord10_gui = "#5E81AC"
"   let s:nord11_gui = "#BF616A"
"   let s:nord12_gui = "#D08770"
"   let s:nord13_gui = "#EBCB8B"
"   let s:nord14_gui = "#A3BE8C"
"   let s:nord15_gui = "#B48EAD"
"
"   let s:nord1_term = "0"
"   let s:nord3_term = "8"
"   let s:nord5_term = "7"
"   let s:nord6_term = "15"
"   let s:nord7_term = "14"
"   let s:nord8_term = "6"
"   let s:nord9_term = "4"
"   let s:nord10_term = "12"
"   let s:nord11_term = "1"
"   let s:nord12_term = "11"
"   let s:nord13_term = "3"
"   let s:nord14_term = "2"
"   let s:nord15_term = "5"
"
"   let g:terminal_color_0 = s:nord1_gui
"   let g:terminal_color_1 = s:nord11_gui
"   let g:terminal_color_2 = s:nord14_gui
"   let g:terminal_color_3 = s:nord13_gui
"   let g:terminal_color_4 = s:nord9_gui
"   let g:terminal_color_5 = s:nord15_gui
"   let g:terminal_color_6 = s:nord8_gui
"   let g:terminal_color_7 = s:nord5_gui
"   let g:terminal_color_8 = s:nord3_gui
"   let g:terminal_color_9 = s:nord11_gui
"   let g:terminal_color_10 = s:nord14_gui
"   let g:terminal_color_11 = s:nord13_gui
"   let g:terminal_color_12 = s:nord9_gui
"   let g:terminal_color_13 = s:nord15_gui
"   let g:terminal_color_14 = s:nord7_gui
"   let g:terminal_color_15 = s:nord6_gui
" endfunction

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

" coc.nvim
let g:coc_global_extensions = [
            \"coc-marketplace",
            \"coc-word",
            \"coc-git",
            \"coc-tsserver",
            \"coc-project",
            \"coc-pairs",
            \"coc-json",
            \"coc-html",
            \"coc-css",
            \"coc-ultisnips",
            \"coc-prettier",
            \"coc-lists",
            \"coc-clangd",
            \"coc-emoji",
            \"coc-yaml",
            \"coc-python",
            \"coc-tailwindcss",
            \"coc-svg",
            \]
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
let g:coc_auto_copen = 0

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! s:GoToDefinition()
  if CocAction('jumpDefinition')
    return v:true
  endif

  let ret = execute("silent! normal \<C-]>")
  if ret[:5] =~ "Error"
    call searchdecl(expand('<cword>'))
  endif
endfunction

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

function! s:GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList --normal grep '.word
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=white guibg=#ff5555
augroup end

" autocmd User CocQuickfixChange :Denite -mode=normal quickfix

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  autocmd FileType typescript,typescript.tsx,typescriptreact,javascript,json,html,scss,css,graphql nmap <space><space> :Prettier<cr>
  autocmd FileType cpp,objcpp,c,svg,python,go,rust,java nmap <space><space> :Format<cr>
augroup end

" multiple cursors
" nmap <silent> <C-c> <Plug>(coc-cursors-position)
" nmap <silent> <C-d> <Plug>(coc-cursors-word)
" xmap <silent> <C-d> <Plug>(coc-cursors-range)
" " use normal command like `<leader>xi(`
" nmap <leader>x  <Plug>(coc-cursors-operator)
" hi CocCursorRange ctermfg=220 guifg=white guibg=#ff5555

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<tab>"
nmap <space>f :CocCommand explorer<cr>
nmap <leader>e <Plug>(coc-diagnostic-info)
nmap <leader>cl <Plug>(coc-codelens-action)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>gh :CocCommand git.chunkInfo<cr>
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac <Plug>(coc-codeaction)
nmap <silent>K :call <SID>show_documentation()<cr>
" nmap <silent>gd :call <SID>GoToDefinition()<cr>
nmap <silent> gd <Plug>(coc-definition)
vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@ 

" nnoremap <silent> <c-p>     :<C-u>CocList files<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>u  :<C-u>CocList --normal mru<cr>
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>b  :<C-u>CocList buffers<cr>
nnoremap <silent> <space>y  :<C-u>CocList --normal yank<cr>
nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>p  :<C-u>CocListResume<cr>
nnoremap <silent> <space>m  :<C-u>CocList --normal marks<cr>
nnoremap <silent> <space>h  :<C-u>CocList --normal searchhistory<cr>
nnoremap <silent> <space>k  :<C-u>CocList --normal maps<cr>
nnoremap <silent> <space>q  :<C-u>CocList --normal tasks<cr>
nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<cr>
nnoremap <silent> <space><leader>  :<C-u>CocList --normal project<cr>
" nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>

command! -nargs=0 ColorPresentation :call CocAction('colorPresentation')
command! -nargs=0 PickColor :call CocAction('pickColor')
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=+ -complete=custom,s:GrepArgs Rgl exe 'CocList grep '.<q-args>
command! -nargs=0 Rg exe 'CocList -I grep'
command! -nargs=0 TODO exe "CocList --normal grep TODO:"

" editorconfig-vim
if s:is_installed('editorconfig-vim')
  " respect .editorconfig
else
  autocmd FileType python,elm,go,c,cpp,h set tabstop=4 shiftwidth=4 expandtab ai
  autocmd FileType vim,javascript,javascript.jsx,typescript,typescript.tsx,json,css,scss,html,yaml,md       set tabstop=2 shiftwidth=2 expandtab ai
endif

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
autocmd BufNewFile,BufRead tsconfig.json      set ft=jsonc
autocmd BufNewFile,BufRead tslint.json        set ft=jsonc
autocmd BufNewFile,BufRead coc-settings.json  set ft=jsonc
autocmd BufNewFile,BufRead settings.json      set ft=jsonc

autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" vim-sneak
let g:sneak#label = 1

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
let g:indentLine_enabled = 0
nnoremap <leader>i :IndentLinesToggle<cr>

" vim-dirvish
let g:dirvish_relative_paths = 0
let g:dirvish_mode = ':sort ,^.*[\/],'

nmap <leader>s <Plug>(dirvish_split_up)
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
map <c-j> <Plug>(edgemotion-j)
map <c-k> <Plug>(edgemotion-k)
vmap <c-j> <Plug>(edgemotion-j)
vmap <c-k> <Plug>(edgemotion-k)

" tcomment_vim
nmap <c-_><c-_> :TComment<cr>
nmap gcc :TComment<cr>
vmap gc :TComment<cr>
nmap gca :TCommentAs 
vmap gca :TCommentAs 

" git-messenger.vim
nmap gm <Plug>(git-messenger)

" vim-yoink
let g:yoinkSavePersistently = 1

nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

nmap <expr> <c-p> yoink#canSwap() ? '<plug>(YoinkPostPasteSwapForward)' : ':<C-u>CocList files<cr>'
nmap <expr> <c-n> yoink#canSwap() ? '<plug>(YoinkPostPasteSwapBack)' : ''

" vim-stay
set viewoptions=cursor,folds,slash,unix

" vim-visual-multi
let g:VM_Selection_hl     = 'Cursor'
let g:VM_Mono_Cursor_hl   = 'Cursor'
let g:VM_Ins_Mode_hl      = 'Cursor'
let g:VM_Normal_Cursor_hl = 'Cursor'

" asyncrun.vim
let g:asyncrun_bell = 1

noremap <leader>q :call asyncrun#quickfix_toggle(30)<cr>
noremap <leader>ar :AsyncRun -mode=term -pos=bottom 
" autocmd FileType c,cpp,cmake noremap <leader>m :AsyncRun -mode=term -pos=bottom cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES -B build .<cr>
" autocmd FileType c,cpp,cmake noremap <leader>c :AsyncRun -mode=term -pos=bottom -cwd=build make<cr>
" autocmd FileType c,cpp,cmake noremap <leader>cc :AsyncRun -mode=term -pos=bottom make -cwd=build make clean<cr>

augroup vimrc
autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(30, 1)
augroup END

" asynctasks.vim
let g:asynctasks_rtp_config = 'asynctasks/tasks.ini'
let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg', '.projectionist.json', '.editorconfig', 'compile_commands.json']
noremap <leader>r :AsyncTask project-run<cr>
noremap <leader>b :AsyncTask project-build<cr>
noremap <leader>x :AsyncTask project-test<cr>
noremap <leader>c :AsyncTask project-clean<cr>

" vim-floaterm
function! s:run_floaterm(opts)
  let curr_bufnr = floaterm#curr()
  if has_key(a:opts, 'silent') && a:opts.silent == 1
    FloatermHide!
  endif
  let cmd = 'cd ' . shellescape(getcwd())
  call floaterm#terminal#send(curr_bufnr, [cmd])
  call floaterm#terminal#send(curr_bufnr, [a:opts.cmd])
  " Back to the normal mode
  stopinsert
endfunction

let g:floaterm_shell = 'powershell'
let g:floaterm_keymap_toggle = '<c-q>'
let g:floaterm_wintitle = v:true
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
let g:asyncrun_runner.floaterm = function('s:run_floaterm')
" let g:asynctasks_term_pos = 'floaterm'

nnoremap <c-r> :Ranger<cr>
command! Ranger FloatermNew vifm
autocmd User Startified setlocal buflisted

" vista.vim
let g:vista_default_executive = 'coc'
let g:vista_stay_on_open = 1
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_highlight_whole_line = 1
let g:vista_sidebar_width = 50
let g:vista_cursor_delay = 600000
nmap <space>t :Vista!!<cr>

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

" open-browser.vim
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" vim-terminal-help
let g:terminal_key = '<leader>t'
let g:terminal_cwd = 2
let g:terminal_list = 0
let g:terminal_height = 12

" vim-interestingwords
let g:interestingWordsRandomiseColors = 0
let g:interestingWordsDefaultMappings = 0
let g:interestingWordsGUIColors = ['#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['121', '211', '137', '214', '222']

nnoremap <silent> <leader>w :call InterestingWords('n')<cr>
vnoremap <silent> <leader>w :call InterestingWords('v')<cr>
nnoremap <silent> <leader>W :call UncolorAllWords()<cr>
nnoremap <silent> ]] :call WordNavigation(1)<cr>
nnoremap <silent> [[ :call WordNavigation(0)<cr>

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
nmap <leader>rr <plug>(SubversiveSubstituteRange)
xmap <leader>rr <plug>(SubversiveSubstituteRange)
nmap <leader><leader>rr <plug>(SubversiveSubvertRange)
xmap <leader><leader>rr <plug>(SubversiveSubvertRange)
xmap s <plug>(SubversiveSubstitute)
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

" devdocs.vim
let g:devdocs_filetype_map = {
  \   'javascriptreact': 'react',
  \   'typescriptreact': 'react',
  \ }
command! -nargs=0 Doc :DevDocsAllUnderCursor

" ------------------
" deprecated plugins
" ------------------

" any-jump.vim
" let g:any_jump_list_numbers = 0
" let g:any_jump_usages_enabled = 1
" let g:any_jump_grouping_enabled = 0
" let g:any_jump_preview_lines_count = 5
" let g:any_jump_max_search_results = 7
" let g:any_jump_search_prefered_engine = 'rg'
" let g:any_jump_results_ui_style = 'filename_first'
"
" let g:any_jump_window_width_ratio  = 1.0
" let g:any_jump_window_height_ratio = 0.6
" let g:any_jump_window_top_offset   = 0

" nnoremap <leader>n :AnyJump<CR>
" nnoremap <leader>m :AnyJumpLastResults<CR>

" vim-bookmarks
" nnoremap <leader>mm :BookmarkToggle<cr>
" nnoremap <leader>mi :BookmarkAnnotate<cr>
" nnoremap <leader>ma :BookmarkShowAll<cr>
" nnoremap <leader>j :BookmarkNext<cr>
" nnoremap <leader>k :BookmarkPrev<cr>
" nnoremap <leader>mc :BookmarkClear<cr>
" nnoremap <leader>mx :BookmarkClearAll<cr>
"
" let g:bookmark_sign = '♥'
" let g:bookmark_highlight_lines = 1
" let g:bookmark_no_default_key_mappings = 1
" hi BookMarkLine ctermbg=black ctermfg=none
" hi BookMarkSign ctermbg=none ctermfg=none

" vim-signify
" nmap ]h <plug>(signify-next-hunk)
" nmap [h <plug>(signify-prev-hunk)
"
" omap ih <plug>(signify-motion-inner-pending)
" xmap ih <plug>(signify-motion-inner-visual)
" omap ah <plug>(signify-motion-outer-pending)
" xmap ah <plug>(signify-motion-outer-visual)

" gina.vim
" command Blame Gina blame --width=100 --format="%su %= %ti %au"

" vim-go
" autocmd FileType go
"     \   nmap <C-]> <Plug>(go-def)
"     \ | nmap <leader>god  <Plug>(go-describe)
"     \ | nmap <leader>goc  <Plug>(go-callees)
"     \ | nmap <leader>goC  <Plug>(go-callers)
"     \ | nmap <leader>goi  <Plug>(go-info)
"     \ | nmap <leader>gom  <Plug>(go-implements)
"     \ | nmap <leader>gos  <Plug>(go-callstack)
"     \ | nmap <leader>goe  <Plug>(go-referrers)
"     \ | nmap <leader>gor  <Plug>(go-run)
"     \ | nmap <leader>gov  <Plug>(go-vet)

" autocmd FileType go highlight default link goErr WarningMsg | match goErr /\<err\>/

" FastFold
" let g:fastfold_savehook = 1
" let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
" let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
" let g:javascript_folding = 1

" vim-bbye
" command! -bang -complete=buffer -nargs=? BD Bdelete<bang> <args>

" vim-operator-flashy
" let g:operator#flashy#flash_time = 300
" hi Flashy term=bold ctermbg=1 guibg=red
" map y <Plug>(operator-flashy)
" nmap Y <Plug>(operator-flashy)$

" vim-gencode-cpp
" noremap <leader>tdc :GenDeclaration<cr>
" noremap <leader>tdd :GenDefinition<cr>

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
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

noremap <F1> <esc>

" no highlight
nnoremap <silent><esc> :noh<return><esc>
nnoremap <silent><cr> :noh<cr>

" speed up scrolling of the viewport slightly
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

noremap j gj
noremap k gk

nnoremap tp :tabprev<cr>
nnoremap tn :tabnext<cr>

nnoremap <leader>; A;<ESC>
nnoremap <leader>cc A,<ESC>
nnoremap <leader>. A.<ESC>
nnoremap <leader>\ A \<ESC>
" nnoremap <leader>e :tabnew 
nnoremap <leader>ee :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>ef :e <C-R>=expand('%')<CR>

" nnoremap <leader><leader> <C-^>
nnoremap qq :bd<cr>

command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'
command! GCompileCommands execute '!xmake project -k compile_commands'

" ------------
" nvy settings
" ------------

if exists('g:nvy')
  set guifont=Victor\ Mono:h14
  highlight Cursor guifg=white guibg=#ff5555
  set guicursor=n-v-c:block-Cursor,i-ci-ve:ver30-Cursor
end
