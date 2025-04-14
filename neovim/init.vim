call plug#begin(stdpath('data') . '/plugged')

if exists(":PlugInstall")

" colorscheme
" Plug 'joshua7v/oceanic-next', { 'branch': 'silent' }
Plug 'mhartington/oceanic-next'

" syntax
" Plug 'Shougo/context_filetype.vim'

let g:polyglot_disabled = ['vue', 'markdown']
let g:zig_fmt_autosave = 0
" Plug 'sheerun/vim-polyglot'
Plug 'wuelnerdotexe/vim-astro'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'HerringtonDarkholme/yats.vim'
let g:astro_typescript = 'enable'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafOfTree/vim-svelte-plugin'
let g:vim_svelte_plugin_use_typescript = 1

" edit
" Plug 'github/copilot.vim'
Plug 'chaoren/vim-wordmotion'
" Plug 'b0o/incline.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'haya14busa/vim-asterisk'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'michaeljsmith/vim-indent-object'
" Plug 'Julian/vim-textobj-variable-segment'
" Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sleuth'
Plug 'godlygeek/tabular', { 'on': ['Tabularize'] }
Plug 'ntpeters/vim-better-whitespace', { 'on': ['StripWhitespace'] }
Plug 'justinmk/vim-dirvish'
Plug 'szw/vim-maximizer', { 'on': ['MaximizerToggle'] }
Plug 'haya14busa/vim-edgemotion'
Plug 'rlane/pounce.nvim'
" Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-commentary'
" Plug 'numToStr/Comment.nvim'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'Shougo/vinarise.vim', { 'on': ['Vinarise'] }
" Plug 'Valloric/MatchTagAlways', { 'for': ['typescriptreact', 'html'] }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'lfv89/vim-interestingwords'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'svermeulen/vim-subversive'
Plug 'tpope/vim-abolish'
" Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'] }
" Plug 'tenfyzhong/vim-gencode-cpp', { 'for': ['c', 'cpp'] }
" Plug 'anuvyklack/nvim-keymap-amend'
" Plug 'anuvyklack/pretty-fold.nvim'
" Plug 'anuvyklack/fold-preview.nvim'
Plug 'mattn/emmet-vim'

" project
Plug 'rhysd/devdocs.vim', { 'on': ['DevDocsAllUnderCursor'] }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'voldikss/vim-floaterm'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
Plug 'Shougo/echodoc.vim'
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'RutaTang/quicknote.nvim'
" Plug 'jremmen/vim-ripgrep'
" Plug 'mangelozzi/rgflow.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'folke/persistence.nvim'
" Plug 'rmagatti/auto-session'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'fannheyward/telescope-coc.nvim'
Plug 'joshua7v/telescope-coc.nvim'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'

" miscellaneous
Plug 'romainl/vim-qf'
Plug 'kevinhwang91/nvim-bqf'
Plug 'stevearc/quicker.nvim'
" Plug 'zhimsel/vim-stay'
Plug 'farmergreg/vim-lastplace'
Plug 'pbrisbin/vim-mkdir'
Plug 'tyru/open-browser.vim', { 'on': ['<Plug>(openbrowser-smart-search)'] }
Plug 'skywind3000/vim-terminal-help'
Plug 'guns/xterm-color-table.vim', { 'on': ['XtermColorTable'] }
" Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'inside/vim-search-pulse'
Plug 'dstein64/vim-startuptime', { 'on': ['StartupTime'] }
Plug 'yaocccc/nvim-hlchunk'
" Plug 'rest-nvim/rest.nvim'
" Plug '~/erinn/tools/whitebox/whitebox_v0.96.2/editor_plugins/whitebox-vim'
Plug 'Robitx/gp.nvim'

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
autocmd FileType dirvish,qf setlocal syntax=on

command! SO :setlocal syntax=on
command! SF :setlocal syntax=off
command! BO :%bd|e#

" autocmd BufWinEnter,WinNew,BufEnter * if nvim_win_get_config(0)['relative'] != '' | setlocal syntax=off | endif

let g:mapleader = ','
set nocompatible

set iskeyword-=-
set isfname+=(
set isfname+=)
autocmd FileType html,css,typescriptreact setlocal iskeyword+=-
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

set t_ti= t_te=           " alway show the content on the screen after exist VIM
set mouse=
set selection=inclusive   " set selection=exclusive
set selectmode=mouse,key
set title                 " change the terminal's title
set novisualbell          " don't beep
set noerrorbells          " don't beep
set t_vb=
set tm=500
set nostartofline         " keep cursor postion when switching between buffers

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
set noscrollbind
set switchbuf=useopen

" File encode:encode for varied filetype
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8

if system('uname -r') =~ "microsoft"
  set ffs=dos,unix,mac
else
  set ffs=unix,dos,mac
endif

set formatoptions+=m
set formatoptions+=B         " When joining lines, don't insert a space between two multi-byte characters.
set completeopt=noinsert,menuone,noselect
set jumpoptions+=stack

set wildmenu                 " auto complete command
set path+=**
set wildignore=**.o,*~,.swp,*.bak,*.pyc,*.class " Ignore compiled files

set viminfo^=% " Remember info about open buffers on close
set magic      " For regular expressions turn magic on

set backspace=eol,start,indent               " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l

set shortmess+=c
set tabline=
set guitablabel=%t

set nowrap " disable wrap
set number " show line number
set relativenumber " show relative line number
set numberwidth=3
autocmd InsertEnter * :set number " no relativenumber in insert mode
autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

set omnifunc=syntaxcomplete#Complete
set signcolumn=yes
set splitbelow

set textwidth=0
set synmaxcol=7777

let g:python3_host_prog = 'python3'

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
  set conceallevel=0 concealcursor=niv
endif

if has('macunix')
" pbcopy for OSX copy/paste
" vnoremap <C-x> :!pbcopy<cr>
" vnoremap <C-c> :w !pbcopy<cr><cr>
endif

" Close popup menu when leave insert mode
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

autocmd BufWinEnter * :set textwidth=0

nnoremap <silent> <c-r> :r !<c-r><c-l><cr>
nnoremap <leader>aa ggVG

" nnoremap <C-o> <C-o>zz
" nnoremap <C-i> <C-i>zz


if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif

" function! SaveJump(motion)
"   if exists('#SaveJump#CursorMoved')
"     autocmd! SaveJump
"   else
"     normal! m'
"   endif
"   let m = a:motion
"   if v:count
"     let m = v:count.m
"   endif
"   execute 'normal!' m
" endfunction

" function! SetJump()
"   augroup SaveJump
"     autocmd!
"     autocmd CursorMoved * autocmd! SaveJump
"   augroup END
" endfunction

augroup vim_todo
    au!
    au Syntax * syn match MyTodo /\v<(FIXME|NOTE|OPTIMIZE)/ containedin=.*Comment,vimCommentTitle
    au Syntax * syn match MyImportant /\v<(IMPORTANT|TEMP)/ containedin=.*Comment,vimCommentTitle
augroup END

" nnoremap <silent> <C-f> :<C-u>call SaveJump("\<lt>C-f>")<CR>:call SetJump()<CR>
" nnoremap <silent> <C-b> :<C-u>call SaveJump("\<lt>C-b>")<CR>:call SetJump()<CR>
" nnoremap <silent> <C-u> :<C-u>call SaveJump("\<lt>C-u>")<CR>:call SetJump()<CR>
" nnoremap <silent> <C-d> :<C-u>call SaveJump("\<lt>C-d>")<CR>:call SetJump()<CR>

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
  " for nvim before v0.10
  " hi StatusLine ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  " hi StatusLineNC ctermfg=235 ctermbg=145 guibg=#65737e guifg=#1b2b34
  " hi TabLineFill ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34

  hi StatusLine ctermfg=235 ctermbg=145 guifg=#ff5555 guibg=#1b2b34
  hi StatusLineNC ctermfg=235 ctermbg=145 guifg=#65737e guibg=#1b2b34

  hi TabLine cterm=NONE ctermfg=145 ctermbg=235 gui=NONE guibg=#1b2b34 guifg=#65737e
  hi TabLineSel ctermfg=145 ctermbg=345 guibg=#1b2b34 guifg=#ff5555
  hi TabLineFill ctermfg=235 ctermbg=145 guibg=#1b2b34
  hi PmenuSel ctermbg=145 guibg=#ff5555
  hi WildMenu ctermbg=145 guibg=#ff5555
  hi NormalFloat ctermbg=145 guibg=#1b2b34
  " hi Type ctermfg=221 guifg=#fac863 term=NONE gui=NONE

  hi DiffAdd ctermfg=2 ctermbg=0 guifg=#A3BE8C guibg=#2E3440
  hi DiffChange ctermfg=3 ctermbg=0 guifg=#EBCB8B guibg=#2E3440
  hi DiffDelete ctermfg=1 ctermbg=0 guifg=#BF616A guibg=#2E3440
  hi DiffText ctermfg=4 ctermbg=0 guifg=#81A1C1 guibg=#2E3440

  hi Search ctermfg=0 ctermbg=6 guibg=#88C0D0 guifg=#3B4252
  hi QuickFixLine ctermfg=none ctermbg=none guibg=none guifg=none
  hi WinSeparator guibg=none guifg=#777777

  hi! link DiffAdded DiffAdd
  hi! link DiffChanged DiffChange
  hi! link DiffRemoved DiffDelete
  hi! link TermCursor Cursor
  hi! link TargetWord TabLineSel
  hi! link Error StatusLine
  hi! link Folded EndOfBuffer

  hi Todo guifg=white guibg=#4381c0
  hi MyTodo guifg=white guibg=#da666c
  hi MyImportant guifg=white guibg=#efad04

  " custom highlights
  hi MyText ctermfg=253 guifg=#d8dee9
  hi MyKeyword ctermfg=221 guifg=#fac863

  " typescript
  hi link typescriptImport MyKeyword
  hi link typescriptExport MyKeyword
  hi link typescriptAsyncFuncKeyword MyKeyword
  hi link typescriptFuncKeyword MyKeyword
  hi link typescriptPredefinedType MyKeyword
  hi link typescriptVariable MyKeyword
  hi link typescriptAliasKeyword MyKeyword
  hi link typescriptConditional MyKeyword
  hi link typescriptBOMWindowMethod MyKeyword
  hi link typescriptBOMWindowProp MyKeyword
  hi link typescriptGlobal MyKeyword
  hi link typescriptNodeGlobal MyKeyword
  hi link typescriptTry MyKeyword
  hi link typescriptExceptions MyKeyword
  hi link typescriptCastKeyword MyKeyword
  hi link typescriptOperator MyKeyword
  hi link typescriptEnumKeyword MyKeyword
  hi link typescriptInterfaceKeyword MyKeyword
  hi link typescriptReadonlyModifier MyKeyword
  hi link typescriptObjectAsyncKeyword MyKeyword
  hi link typescriptConstraint MyKeyword
  hi link typescriptBOM MyKeyword
  hi link typescriptIdentifier MyKeyword
  hi link typescriptClassKeyword MyKeyword
  hi link typescriptClassExtends MyKeyword
  hi link typescriptTypeQuery MyKeyword
  hi link typescriptDefault MyKeyword
  hi link typescriptCase MyKeyword
  hi link typescriptBranch MyKeyword
  hi link typescriptGlobalMethod MyKeyword
  hi link typescriptAmbientDeclaration MyKeyword
  hi link typescriptModule MyKeyword
  hi link typescriptBOMWindowCons MyKeyword
  hi link typescriptConditionalElse MyKeyword
  hi link typescriptExportType MyKeyword

  hi link typescriptES6SetProp MyText
  hi link typescriptXHRProp MyText
  hi link typescriptRegExpProp MyText
  hi link typescriptRequestProp MyText
  hi link typescriptEncodingProp MyText
  hi link typescriptPaymentMethod MyText
  hi link typescriptOptionalMark MyText
  hi link typescriptParamImpl MyText
  hi link typescriptPromiseMethod MyText
  hi link typescriptFuncType MyText
  hi link typescriptBOMNavigatorProp MyText
  hi link typescriptDOMStorageMethod MyText
  hi link typescriptDOMNodeMethod MyText
  hi link typescriptDOMEventTargetMethod MyText
  hi link typescriptDOMEventMethod MyText
  hi link typescriptDOMFormProp MyText
  hi link typescriptUnion MyText
  hi link typescriptEndColons MyText
  hi link typescriptFuncComma MyText
  hi link typescriptTemplateSB MyText
  hi link typescriptStringMethod MyText
  hi link typescriptFileReaderProp MyText
  hi link typescriptPaymentShippingOptionProp MyText
  hi link typescriptBOMLocationMethod MyText
  hi link typescriptFuncTypeArrow MyText
  hi link typescriptHeadersMethod MyText
  hi link typescriptFuncName MyText
  hi link typescriptCall MyText
  hi link typescriptBraces MyText
  hi link typescriptMember MyText
  hi link typescriptDestructureVariable MyText
  hi link typescriptDestructureLabel MyText
  hi link typescriptResponseProp MyText
  hi link typescriptDOMDocProp MyText
  hi link typescriptDOMDocMethod MyText
  hi link typescriptDOMEventProp MyText
  hi link typescriptArrowFunc MyText
  hi link typescriptConsoleMethod MyText
  hi link typescriptArrayMethod MyText
  hi link typescriptArrayStaticMethod MyText
  hi link typescriptObjectLabel MyText
  hi link typescriptJSONStaticMethod MyText
  hi link typescriptBOMHistoryProp MyText
  hi link typescriptDateMethod MyText
  hi link typescriptMathStaticMethod MyText
  hi link typescriptURLUtilsProp MyText
  hi link typescriptES6SetMethod MyText
  hi link typescriptCacheMethod MyText
  hi link typescriptRegExpMethod MyText
  hi link typescriptDOMNodeProp MyText
  hi link typescriptFileListMethod MyText
  hi link typescriptFunctionMethod MyText
  hi link typescriptInterfaceExtends MyText
  hi link typescriptObjectStaticMethod MyText
  hi link typescriptPaymentProp MyText
  hi link typescriptFileReaderMethod MyText
  hi link typescriptPromiseStaticMethod MyText
  hi link typescriptBOMHistoryMethod MyText
  hi link typescriptPaymentResponseMethod MyText
  hi link typescriptDOMFormMethod MyText
  hi link typescriptXHRMethod MyText
  hi link typescriptServiceWorkerMethod MyText
  hi link typescriptPaymentAddressProp MyText

  " javascript
  hi link javaScriptIdentifier MyKeyword
  hi link javaScriptGlobal MyKeyword
  hi link javaScriptReserved MyKeyword
  hi link javaScriptConditional MyKeyword
  hi link javaScriptFunction MyKeyword
  hi link jsFunction MyKeyword
  hi link jsConditional MyKeyword
  hi link jsAsyncKeyword MyKeyword
  hi link jsGlobalObjects MyKeyword
  hi link jsGlobalNodeObjects MyKeyword
  hi link jsClassKeyword MyKeyword
  hi link jsOperatorKeyword MyKeyword
  hi link jsImport MyKeyword
  hi link jsFrom MyKeyword
  hi link jsExport MyKeyword
  hi link jsForAwait MyKeyword

  hi link sqlKeyword MyText
  hi link javaScriptEmbed MyText
  hi link jsxTagName MyText
  hi link jsxDot MyText
  hi link jsxTag MyText
  hi link jsxAttrib MyText
  hi link jsxBraces MyText
  hi link jsxOpenPunct MyText
  hi link jsxComponentName MyText
  hi link jsxCloseString MyText
  hi link jsxEqual MyText
  hi link jsFuncName MyText
  hi link jsFuncCall MyText
  hi link jsArrowFunction MyText
  hi link jsOperator MyText
  hi link jsBlockLabel MyText

  " html
  hi! link htmlTag htmlTag
  hi! link htmlTagN htmlTag
  hi! link htmlTagName htmlTag
  hi! link htmlEndTag htmlTag
  hi! link htmlSpecialTagName htmlTag
  hi! link htmlArg MyText
  hi! link htmlBold MyText

  " c/cpp
  hi link cTypedef MyKeyword
  hi link cStructure MyKeyword
  hi link cType MyKeyword
  hi link cConditional MyKeyword
  hi link cInclude MyKeyword
  hi link cppType MyKeyword

  hi link cErrInParen MyText
  hi link cppSTLtype MyText
  hi link cppSTLenum MyText
  hi link cUserFunction MyText

  " elixir
  hi link elixirKeyword MyKeyword
  hi link elixirDefine MyKeyword
  hi link elixirPrivateDefine MyKeyword
  hi link elixirBlockDefinition MyKeyword
  hi link elixirImplDefine MyKeyword
  hi link elixirStructDefine MyKeyword
  hi link elixirDelegateDefine MyKeyword
  hi link elixirMacroDefine MyKeyword
  hi link elixirModuleDefine MyKeyword
  hi link elixirInclude MyKeyword
  hi link elixirFunctionDeclaration MyText

  " dirvish
  hi link DirvishArg MyKeyword

endfunction
autocmd! ColorScheme OceanicNext call s:patch_oceanic_next_colors()

function s:SetCursorLine()
  set cursorline
  hi CursorLine cterm=none ctermbg=235
endfunction

autocmd VimEnter * call s:SetCursorLine()

let g:hlchunk_files = '*.ts,*.tsx,*.js,*.json,*.go,*.c,*.cpp,*.rs,*.h,*.hpp,*.lua'
let g:hlchunk_hi_style = 'guifg=#557799 guibg=none'

if s:is_installed('oceanic-next')
  colorscheme OceanicNext
else
  colorscheme desert
endif


function! HighlightGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

function! HighlightStack()
    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
    endfor
endfunction

command! HG :call HighlightGroup()
command! HS :call HighlightStack()

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

function! GetFn()
  let fn = get(b:,'coc_current_function','')
  if (fn) != ''
      let fn = '> ' . get(b:,'coc_current_function','')
  endif
  return fn
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
  set statusline+=%m%r%w\ 

  set statusline+=%=%{GetFn()}\ 
  set statusline+=%{StatusDiagnostic()}\ 
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

" coc.nvim

" fix node path under scoop/volta installation
if isdirectory($HOME . "/scoop/apps/volta")
  let g:coc_node_path = "~/scoop/apps/volta/current/appdata/bin/node.exe"
endif

let g:coc_global_extensions = [
        \"@yaegassy/coc-astro",
        \"@yaegassy/coc-volar",
        \"@yaegassy/coc-tailwindcss3",
        \"coc-clangd",
        \"coc-css",
        \"coc-cssmodules",
        \"coc-eslint",
        \"coc-git",
        \"coc-gitignore",
        \"coc-go",
        \"coc-highlight",
        \"coc-html",
        \"coc-json",
        \"coc-lines",
        \"coc-lists",
        \"coc-marketplace",
        \"coc-prettier",
        \"coc-pyright",
        \"coc-rust-analyzer",
        \"coc-snippets",
        \"coc-svg",
        \"coc-tasks",
        \"coc-toml",
        \"coc-tsserver",
        \"coc-webpack",
        \"coc-word",
        \"coc-yaml",
        \"coc-yank",
        \]

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
let g:coc_auto_copen = 0

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('definitionHover')
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

function! s:GoToDefinitionSplit()
  if CocAction('jumpDefinition', 'vsplit')
    return v:true
  endif

  let ret = execute("silent! normal \<C-]>")
  if ret[:5] =~ "Error"
    call searchdecl(expand('<cword>'))
  endif
endfunction

function! s:GoToReferences()
  execute 'normal z*'
  if CocActionAsync('jumpReferences')
    return v:true
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

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocActionAsync('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  nmap <space><space> :Format<cr>
  " autocmd FileType cpp,c nmap <space><space> maHmbgg=G`bzt`a
  " autocmd FileType typescript,typescript.tsx,typescriptreact,javascript,json,html,scss,css,graphql,svelte nmap <space><space> :Prettier<cr>
  " autocmd FileType cpp,objcpp,c,svg,python,go,rust,java,prisma nmap <space><space> :Format<cr>
augroup end

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
nmap [[ :CocPrev<cr>
nmap ]] :CocNext<cr>
nmap [r :CocFirst<cr>
nmap ]r :CocLast<cr>

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

nmap <leader>ee <Plug>(coc-diagnostic-info)
nmap <leader>cl <Plug>(coc-codelens-action)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" nmap <silent>gr :call <SID>GoToReferences()<cr>
nmap <silent>gh :CocCommand git.chunkInfo<cr>
nmap <leader>rn <Plug>(coc-rename)
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
" vmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>ac <Plug>(coc-codeaction-cursor)
xmap <leader>ac <Plug>(coc-codeaction-selected)
nmap <silent>K :call <SID>show_documentation()<cr>
nmap <silent>Y :call CocActionAsync('diagnosticInfo')<cr>
nmap <silent>gd :call <SID>GoToDefinition()<cr>
nmap <silent>gD :call <SID>GoToDefinitionSplit()<cr>
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
" nmap <silent> gd <Plug>(coc-definition)
" vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
" nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@ 

function! ToggleOutline() abort
  let winid = coc#window#find('cocViewId', 'OUTLINE')
  if winid == -1
    call CocActionAsync('showOutline', 1)
  else
    call coc#window#close(winid)
  endif
endfunction

nnoremap <silent> <space>t :call ToggleOutline()<cr>
nnoremap <silent> <space>o :<C-u>CocList outline<cr>
" nnoremap <silent> <space>f :<C-u>CocList files<cr>
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
" nnoremap <silent> <space>u :<C-u>CocList --normal mru<cr>
" nnoremap <silent> <space>a :<C-u>CocList --normal diagnostics<cr>
" nnoremap <silent> <space>c :<C-u>CocList commands<cr>
" nnoremap <silent> <space>b :<C-u>CocList --normal buffers<cr>
" nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
" nnoremap <silent> <space>g :<C-u>CocList -I grep<cr>
" nnoremap <silent> <space>  :<C-u>CocList -I symbols<cr>
" nnoremap <silent> <space>p :<C-u>CocListResume<cr>
" nnoremap <silent> <space>m :<C-u>CocList --normal marks<cr>
nnoremap <silent> <space>h :<C-u>CocList --normal searchhistory<cr>
nnoremap <silent> <space>k :<C-u>CocList --normal maps<cr>
nnoremap <silent> <space>q :<C-u>CocList --normal floaterm<cr>
nnoremap <silent> <space>z :<C-u>CocList --normal tasks<cr>
nnoremap <silent> <space>l :<C-u>CocList fuzzy_lines<cr>
nnoremap <silent> <space>w :exe 'CocList -I --normal --input='.expand('<cword>').' words'<cr>
nnoremap <silent> <space>x :<C-u>CocList --normal sessions<cr>
" nnoremap <silent> <space>fl :<c-u>CocList --normal explPresets<cr>
" nnoremap <silent> <space><leader>  :<C-u>CocList --normal project<cr>
" nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>


command! -nargs=0 SessionSave :CocCommand session.save
command! -nargs=0 SessionLoad :CocCommand session.load
command! -nargs=0 InlayHint :CocCommand document.toggleInlayHint
command! -nargs=0 IncomingCalls :call CocActionAsync('showIncomingCalls')
command! -nargs=0 OutgoingCalls :call CocActionAsync('showOutgoingCalls')
command! -nargs=0 ColorPresentation :call CocActionAsync('colorPresentation')
command! -nargs=0 PickColor :call CocActionAsync('pickColor')
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=? Fold :call CocActionAsync('fold', <f-args>)
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
" command! -nargs=+ -complete=custom,s:GrepArgs Rgl exe 'CocList grep '.<q-args>
" command! -nargs=0 Rg exe 'CocList -I grep'
" command! -nargs=0 TODO exe 'CocList --normal grep //\ TODO'
" command! -nargs=0 NOTE exe 'CocList --normal grep //\ NOTE'
" command! -nargs=0 IMPORTANT exe 'CocList --normal grep //\ IMPORTANT'
" command! -nargs=0 TEMP exe 'Rg -e "TEMP:"'
" command! -nargs=0 TODO exe 'Rg -e "TODO:"'
" command! -nargs=0 NOTE exe 'Rg -e "NOTE:"'
" command! -nargs=0 IMPORTANT exe 'Rg -e "IMPORTANT:"'
inoremap <silent><c-k> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
inoremap <silent><expr> <c-j> coc#refresh()
inoremap <silent><expr> <c-d> coc#refresh()

" inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"

inoremap <silent><expr> <TAB>
 \ coc#pum#visible() ? coc#_select_confirm() :
 \ coc#expandableOrJumpable() ?
 \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
 \ <SID>check_back_space() ? "\<TAB>" :
 \ coc#refresh()

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


hi CocSearch ctermfg=12 guifg=#ff8888
hi CocMenuSel ctermbg=109 guibg=#2E3440
hi CocFloating cterm=reverse ctermfg=145 ctermbg=237 guifg=#a7adba guibg=#343d46
hi CocSelectedRange guibg=#88C0D0 guifg=#3B4252
hi link CocInlayHint Comment
hi gitmessengerPopupNormal cterm=reverse ctermfg=145 ctermbg=237 guifg=#a7adba guibg=#343d46

autocmd BufAdd * if getfsize(expand('<afile>')) > 1024*1024 |
            \ let b:coc_enabled=0 |
            \ endif

if s:is_installed("coc.nvim")
  if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  endif
endif

hi def link CocFadeOut NonText

" vim-gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

let g:gutentags_ctags_tagfile = '.tags'

let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
let g:gutentags_auto_add_gtags_cscope = 0
let g:gutentags_plus_switch = 1

let g:gutentags_plus_nomap = 1
noremap <silent> <leader>gs :GscopeFind! s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind! g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind! c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind! t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind! e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind! f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind! i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind! d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind! a <C-R><C-W><cr>
noremap <silent> <leader>gz :GscopeFind! z <C-R><C-W><cr>

" editorconfig-vim
let &colorcolumn="121"

autocmd FileType python,elm,go,c,cpp,h set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType vim,javascript,javascript.jsx,typescript,typescript.tsx,json,css,scss,html,yaml,md,ex set tabstop=2 shiftwidth=2 expandtab ai

autocmd BufNewFile,BufRead .tern-project  setfiletype json
autocmd BufNewFile,BufRead .jsbeautifyrc  setfiletype json
autocmd BufNewFile,BufRead .eslintrc      setfiletype json
autocmd BufNewFile,BufRead .babelrc       setfiletype json
autocmd BufNewFile,BufRead .luacompleterc setfiletype json
autocmd BufNewFile,BufRead .prettierrc    setfiletype json
autocmd BufNewFile,BufRead .jscsrc        setfiletype json
autocmd BufNewFile,BufRead *.wxml         setfiletype xml
autocmd BufNewFile,BufRead *.pie          setfiletype markdown
" autocmd BufNewFile,BufRead *.jsx          set ft=javascript.jsx
" autocmd BufNewFile,BufRead *.tsx          set ft=typescript.tsx
autocmd BufNewFile,BufRead *.ex               set ft=elixir
autocmd BufNewFile,BufRead *.exs              set ft=elixir
autocmd BufNewFile,BufRead *.eex              set ft=eelixir
autocmd BufNewFile,BufRead *.tpl              set ft=html
autocmd BufNewFile,BufRead,BufWritePost *.m                set ft=objc
autocmd BufNewFile,BufRead,BufWritePost *.mm               set ft=objc
autocmd BufNewFile,BufRead *.shader           set ft=glsl
autocmd BufNewFile,BufRead *.vs,*.fs          set ft=glsl
autocmd BufNewFile,BufRead *.vert,*.frag      set ft=glsl
autocmd BufNewFile,BufRead *.uproject         set ft=json
autocmd BufNewFile,BufRead tsconfig*.json     set ft=jsonc
autocmd BufNewFile,BufRead tslint.json        set ft=jsonc
autocmd BufNewFile,BufRead coc-settings.json  set ft=jsonc
autocmd BufNewFile,BufRead settings.json      set ft=jsonc
autocmd BufNewFile,BufRead *.min**            set ft=min

" autocmd FileType json setlocal conceallevel=0

set errorformat=

" xmake
set errorformat+=%f(%l):\ %m
set errorformat+=%f(%l)\ :\ %m

" rust
set errorformat+=%.%#-->\ %f:%l:%c
set errorformat+=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m
set errorformat+=%f:%l:%c:\ %m
set errorformat+=%f:%l\ %m
set errorformat+=%f\ :\ %m

" typescript
set errorformat+=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m

set errorformat+=%-G%.%#

" %f(%l) \=: %t%*\D%n: %m,%*[^"]"%f"%*\D%l: %m,%f(%l) \=: %m,%*[^ ] %f %l: %m,%f:%l:%c:%m,%f(%l):%m,%f:%l:%m,%f|%l| %m
" autocmd BufNewFile,BufRead *.ts,*.tsx      set errorformat+=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m

" vim-asterisk
let g:asterisk#keeppos = 1

" map *   <Plug>(asterisk-*)
" map #   <Plug>(asterisk-#)
" map g*  <Plug>(asterisk-g*)
" map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map z#  <Plug>(asterisk-z#)
map gz* <Plug>(asterisk-gz*)
map gz# <Plug>(asterisk-gz#)

map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g*  <Plug>(asterisk-*)
map g#  <Plug>(asterisk-#)

" echodoc.vim
let g:echodoc#enable_at_startup = 1

" vim-sneak
hi! link Sneak Search

" pounce.nvim
nmap s <cmd>Pounce<cr>
nmap S <cmd>PounceRepeat<cr>
vmap s <cmd>Pounce<cr>

hi! link PounceMatch Search
hi! link PounceAcceptBest Cursor
hi PounceGap ctermfg=none ctermbg=none guibg=#3a4b5c guifg=none gui=none

" tabular
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:<CR>
vmap <leader>a: :Tabularize /:<CR>
nmap <leader>a\" :Tabularize /\"<CR>
vmap <leader>a\" :Tabularize /\"<CR>
nmap <leader>as :Tabularize /
vmap <leader>as :Tabularize /

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
" let g:golden_ratio_exclude_nonmodifiable = 1
" let g:golden_ratio_autocommand = 0

" vim-maximizer'
nmap <silent><leader>z :MaximizerToggle<cr>

" vim-edgemotion
nnoremap <expr> <c-k> "m'" . "<plug>(edgemotion-k)"
nnoremap <expr> <c-j> "m'" . "<plug>(edgemotion-j)"
vmap <c-j> <Plug>(edgemotion-j)
vmap <c-k> <Plug>(edgemotion-k)

" git-messenger.vim
nmap gm <Plug>(git-messenger)

" vim-visual-multi
let g:VM_Selection_hl       = 'Cursor'
let g:VM_Mono_Cursor_hl     = 'Cursor'
let g:VM_Ins_Mode_hl        = 'Cursor'
let g:VM_Normal_Cursor_hl   = 'Cursor'

let g:VM_leader                  = '\'
let g:VM_maps                    = {}
let g:VM_maps['Find Under']      = '<C-h>'
let g:VM_maps["Add Cursor Down"] = '<c-d>'
let g:VM_maps["Add Cursor Up"]   = '<c-u>'
let g:VM_maps["Start Regex Search"] = '\\/'

" asyncrun.vim
let g:asyncrun_bell = 1
" command! -nargs=0 Rf AsyncRun -program=shebang -pos=bottom $(VIM_FILEPATH)
command -nargs=? -complete=file R AsyncRun -save=2 <args>
command -nargs=? -complete=file RR AsyncRun -raw -save=2 <args>

" asynctasks.vim
let g:asynctasks_rtp_config = 'asynctasks/tasks.ini'
" let g:asyncrun_open = 24
let g:asynctasks_term_pos = 'bottom'
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg', '.projectionist.json', '.editorconfig', 'compile_commands.json']
let g:asynctasks_term_reuse = 1
let g:asynctasks_term_focus = 1

" noremap <silent><leader>q :call asyncrun#quickfix_toggle(24)<cr>
" noremap <leader>r :AsyncTask project-run<cr>
" noremap <leader>b :AsyncTask project-build<cr>
" command! -nargs=0 Test exe 'AsyncTask project-test'
" command! -nargs=0 Clean exe 'AsyncTask project-clean'

" autocmd BufWritePost *.c,*.cpp AsyncTask project-build

" vim-floaterm
if has('macunix')
  let g:floaterm_shell = '/bin/zsh'
else
  let g:floaterm_shell = 'pwsh.exe -NoLogo'
  map <c-z> <nop>
endif

let g:floaterm_keymap_toggle = '<c-q>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_opener = 'drop'

tnoremap <c-[> <c-\><c-n>:FloatermPrev<cr>
tnoremap <c-]> <c-\><c-n>:FloatermNext<cr>
tnoremap <m-t> <c-\><c-n>:FloatermNew<cr>
nnoremap <m-t> :FloatermNew<cr>
nnoremap <m-s> :FloatermNew vifm %:p:h<cr>
nnoremap <m-g> :FloatermNew gitui<cr>

command! NewTerm FloatermNew
command! Vifm :FloatermNew vifm %:p:h .
command! Yazi :FloatermNew yazi
command! Gitui :FloatermNew gitui
nnoremap <leader>f :Yazi<cr>

hi FloatermBorder guibg=#1b2b34
autocmd User Startified setlocal buflisted

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
  \ 'javascriptreact': 1,
  \ 'typescript.tsx': 1,
  \ 'typescriptreact': 1
  \}

" vim-qf
let g:qf_max_height = 24
let g:qf_auto_resize = 0
let g:qf_auto_open_quickfix = 0

" function! ToggleQuickFix()
"     if empty(filter(getwininfo(), 'v:val.quickfix'))
"         copen
"     else
"         cclose
"     endif
" endfunction

" nnoremap <silent> <leader>q :call ToggleQuickFix()<cr>

" quicker.nvim
lua <<EOF
require("quicker").setup({
  edit = {
    enabled = true
  },
  on_qf = function(bufnr) 
  end,
  type_icons = {
    E = "E",
    W = "W ",
    I = "I ",
    N = "N",
    H = "H ",
  },
  keys = {
    {
      ">",
      function()
        require("quicker").expand({ before = 2, after = 2, add_to_existing = true })
      end,
      desc = "Expand quickfix context",
    },
    {
      "<",
      function()
        require("quicker").collapse()
      end,
      desc = "Collapse quickfix context",
    },
  },
})
vim.keymap.set("n", "<leader>q", function()
  require("quicker").toggle()
end, {
  desc = "Toggle quickfix",
})
vim.keymap.set("n", "<leader>l", function()
  require("quicker").toggle({ loclist = true })
end, {
  desc = "Toggle loclist",
})
vim.api.nvim_create_autocmd("User", {
  pattern = "AsyncRunStop",
  callback = function()
    require("quicker").refresh()
    require("quicker").toggle()
  end,
})
EOF
hi! link Delimiter LineNr

" vim-bqf
lua <<EOF
require('bqf').setup({
    auto_resize_height = false,
    func_map = {
        openc = '<cr>',
        open = 'o',
    },
    preview = {
      show_title = false,
      should_preview_cb = function(bufnr, qwinid)
          local ret = true
          local bufname = vim.api.nvim_buf_get_name(bufnr)
          local fsize = vim.fn.getfsize(bufname)
          if fsize > 100 * 1024 then
              -- skip file size greater than 100k
              ret = false
          elseif bufname:match('^fugitive://') then
              -- skip fugitive buffer
              ret = false
          end
          return ret
      end
  }
})

local fn = vim.fn
local cmd = vim.cmd
local api = vim.api

vim.g.coc_enable_locationlist = 0
cmd([[
    aug Coc
        au!
        au User CocLocationsChange lua _G.jumpToLoc()
    aug END
]])

cmd([[
    nmap <silent> gr <Plug>(coc-references)
    nnoremap <silent> <space>a <Cmd>lua _G.diagnostic()<CR>
]])

function _G.jumpToLoc(locs)
    locs = locs or vim.g.coc_jump_locations
    fn.setloclist(0, {}, ' ', {title = 'CocLocationList', items = locs})
    local winid = fn.getloclist(0, {winid = 0}).winid
    if winid == 0 then
        cmd('abo lw')
    else
        api.nvim_set_current_win(winid)
    end
end

function _G.diagnostic()
    fn.CocActionAsync('diagnosticList', '', function(err, res)
        if err == vim.NIL then
            local items = {}
            for _, d in ipairs(res) do
                local text = ('[%s%s] %s'):format((d.source == '' and 'coc.nvim' or d.source),
                    (d.code == vim.NIL and '' or ' ' .. d.code), d.message:match('([^\n]+)\n*'))
                local item = {
                    filename = d.file,
                    lnum = d.lnum,
                    end_lnum = d.end_lnum,
                    col = d.col,
                    end_col = d.end_col,
                    text = text,
                    type = d.severity
                }
                table.insert(items, item)
            end
            fn.setqflist({}, ' ', {title = 'CocDiagnosticList', items = items})

            cmd('bo cope')
        end
    end)
end

EOF

" autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

" vim-ripgrep
" command! R :Rg -w <cword> %

" rgflow.nvim
" lua <<EOF
" require('rgflow').setup(
"     {
"         cmd_flags = ("--smart-case --fixed-strings --ignore --max-columns 200"
"             .. " -g !**/dist/"
"             .. " -g !**/build"
"             .. " -g !**/node_modules/"),
"         default_trigger_mappings = false,
"         default_ui_mappings = true,
"         default_quickfix_mappings = true,
"         colors = {
"             RgFlowHeadLine = {fg = "#6f7071", bg="#1b2b34", bold=false},
"             RgFlowInputBg = {fg = "fg", bg="#1b2b34", bold=false},
"             RgFlowInputFlags = {fg = "fg", bg="#1b2b34", bold=false},
"             RgFlowInputPattern = {fg = "fg", bg="#1b2b34", bold=false},
"             RgFlowInputPath = {fg = "fg", bg="#1b2b34", bold=false},
"         },
"         ui_top_line_char = "━"
"     }
" )
" EOF

" command! RR :lua require('rgflow').open_again()<cr>
" command! Ro :lua require('rgflow').open_blank()<cr>
" command! Rx :lua require('rgflow').abort()<cr>
" command! -nargs=? Rg exe ':lua require("rgflow").search("<args>", "--smart-case --fixed-strings --ignore --max-columns 200", vim.fn.getcwd())'
" command! -nargs=? Rw exe ':lua require("rgflow").search("<args>", "--smart-case --fixed-strings --ignore --max-columns 200 -w", vim.fn.getcwd())'
" command! -nargs=? Rwf exe ':lua require("rgflow").search("<args>", "--smart-case --fixed-strings --ignore --max-columns 200 -w", vim.fn.expand("%"))'
" command! -nargs=? Rc exe ':lua require("rgflow").search("<args>", "--smart-case --fixed-strings --ignore --max-columns 200", vim.fn.getcwd())'

command! -nargs=? -complete=shellcmd Rf :AsyncRun -errorformat=\%f fd -a <args>
command! -nargs=? -complete=file Rg :AsyncRun -errorformat=\%f:\%l:\%c:\%m,\%f:\%l:\%m,\%f:\%l\%m rg --smart-case --ignore --max-columns 200 --vimgrep <args>
command! -nargs=? -complete=file Rz :Rg -e "[\\u4e00-\\u9fa5]+" <args>
command! -nargs=? -complete=file Rw :Rg --fixed-strings -w <args>
command! -nargs=? -complete=file TODO :Rg TODO: <args>
command! -nargs=? -complete=file TEMP :Rg TEMP: <args>
command! -nargs=? -complete=file NOTE :Rg NOTE: <args>
command! -nargs=? -complete=file IMPORTANT :Rg IMPORTANT: <args>

" nnoremap <leader>ff :AsyncRun -errorformat=\%f fd -a 

" open-browser.vim
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" vim-terminal-help
let g:terminal_key = '<leader>t'
let g:terminal_kill = 'term'
let g:terminal_cwd = 1
let g:terminal_list = 0
let g:terminal_height = 20
let g:terminal_pos = 'below'
let g:terminal_edit = 'drop'
let g:terminal_fixheight = 1
if has('macunix')
else
  let g:terminal_shell = 'pwsh.exe -NoLogo'
endif

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

" sideways.vim
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

nnoremap <silent><leader>h :SidewaysLeft<cr>
nnoremap <silent><leader>l :SidewaysRight<cr>

" vim-subversive
" nmap s <plug>(SubversiveSubstitute)
" nmap ss <plug>(SubversiveSubstituteLine)
" nmap S <plug>(SubversiveSubstituteToEndOfLine)

nmap <space>s <plug>(SubversiveSubvertRange)
xmap <space>s <plug>(SubversiveSubvertRange)
nmap <space>ss <plug>(SubversiveSubvertWordRange)

xmap p <plug>(SubversiveSubstitute)
xmap P <plug>(SubversiveSubstitute)

onoremap ie :exec "normal! ggVG"<cr>
onoremap ix :exec "normal! HVL"<cr>

" emmet-vim
let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_mode = 'i'
let g:user_emmet_settings = {
\ 'javascriptreact' : {
\   'extends' : 'jsx'
\  },
\ 'typescriptreact' : {
\   'extends' : 'jsx'
\  },
\ 'javascript': {
\   'extends': 'jsx'
\ }
\}

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

" vim-wordmotion
let g:wordmotion_prefix = "v"

" devdocs.vim
let g:devdocs_filetype_map = {
  \   'javascriptreact': 'react',
  \   'typescriptreact': 'react',
  \ }
command! -nargs=0 Doc :DevDocsAllUnderCursor

" vim-bookmarks
nnoremap <leader>mm :BookmarkToggle<cr>
nnoremap <leader>mi :BookmarkAnnotate<cr>
nnoremap <leader>ma :BookmarkShowAll<cr>
nnoremap <leader>j :BookmarkNext<cr>
nnoremap <leader>k :BookmarkPrev<cr>
nnoremap <leader>mc :BookmarkClear<cr>
nnoremap <leader>mx :BookmarkClearAll<cr>

" let g:bookmark_sign = '♥'
" let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 1
" let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
" hi BookMarkLine ctermbg=none ctermfg=none
" hi BookMarkSign ctermbg=none ctermfg=none

" vim-gencode-cpp
noremap <leader>` :GenDefinition<cr>

" quicknote.nvim
" lua <<EOF
" require("quicknote").setup({})
" vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>:lua require('quicknote').NewNoteAtCurrentLine()<cr>",{})
" EOF

" ------------
" key bindings
" ------------
" tnoremap <Esc> <C-\><C-n>
tnoremap <c-\> <C-\><C-n>
nnoremap <leader>ec :tabnew $MYVIMRC
nnoremap <leader>es :e $HOME/scratch
nnoremap <leader>. <C-^>
command! TabCloseRight :.+1,$tabdo :q
" nnoremap <leader>/ :Rg<space>
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

" nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'gk'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'gj'

nnoremap tp :tabprev<cr>
nnoremap tn :tabnext<cr>

nnoremap <leader>; A;<ESC>

nnoremap qq :bd<cr>

command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'
command! GCompileCommands execute '!xmake project -k compile_commands'
" command! -nargs=? Fd call setqflist([], ' ', {'lines' : systemlist('fd ' . <q-args>), 'efm' : '%f'})

" nvim-autopairs
if s:is_installed('nvim-autopairs')
lua <<EOF
local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')

npairs.setup({
    disable_filetype = {},
    check_ts = false,
    map_c_w = true,
    -- ts_config = {
        -- lua = {'string'},
    -- },
    enable_check_bracket_line = false,
    fast_wrap = {
      map = '<c-s>',
      chars = { '{', '[', '(', '"', "'", "`" },
      end_key = '$',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment',
    },
})

-- local ts_conds = require('nvim-autopairs.ts-conds')

-- press % => %% only while inside a comment or string
-- npairs.add_rules({
--   Rule("%", "%", "lua")
--     :with_pair(ts_conds.is_ts_node({'string','comment'})),
--   Rule("$", "$", "lua")
--     :with_pair(ts_conds.is_not_ts_node({'function'}))
-- })
EOF
endif

" auto-session
" lua <<EOF
" require("auto-session").setup {
"     opts = {
"         suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
"     }
" }
" vim.o.sessionoptions="curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
" EOF
" vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
" set sessionoptions-=blank
" set sessionoptions-=buffers

lua <<EOF
require("persistence").setup({})
vim.keymap.set("n", "<c-l>", function() require("persistence").load() end)
EOF


" Comment.nvim
" lua <<EOF
" require('Comment').setup({
"   pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
" })
" EOF

" incline.nvim
" if s:is_installed('incline.nvim')
" lua <<EOF
" require('incline').setup({
"   hide = {
"     cursorline = true,
"     focused_win = false,
"     only_win = true
"   },
"   render = function(props)
"     local bufname = vim.api.nvim_buf_get_name(props.buf)
"     local res = bufname ~= '' and vim.fn.fnamemodify(bufname, ':t') or '[no name]'
"     if string.find(vim.fn.fnamemodify(bufname, ":t"), "index") then
"       res = vim.fn.fnamemodify(bufname, ":.")
"     end
"     if vim.api.nvim_buf_get_option(props.buf, 'modified') then
"       res = res .. ' [+]'
"     end
"     return res
"   end,
" })
" EOF
" endif

" rest.nvim
" lua <<EOF
" require("rest-nvim").setup({
"   result = {
"     formatters = {
"       json = function(body)
"         return vim.fn.system({"prettier", "--stdin-filepath", "a.json"}, body)
"       end,
"       html = function(body)
"         return vim.fn.system({"prettier", "--stdin-filepath", "a.html"}, body)
"       end
"     },
"   },
" })
" EOF

" gp.nvim
lua <<EOF
require("gp").setup({
    providers = {
        openai = {},
        holdai = {
            endpoint = "https://api.holdai.top/v1/chat/completions",
            secret = os.getenv("HOLDAI_KEY")
        },
    },
    -- log_file = "/Users/joshua/Downloads/gp.nvim.log",
    -- log_sensitive = true,
    chat_user_prefix = "USER:",
    chat_assistant_prefix = { "AGENT:", "[{{agent}}]" },
    chat_conceal_model_params = false,
    command_prompt_prefix_template = "{{agent}} ~ ",
    command_auto_select_response = false,
    agents = {
        {
            name = "chatgpt-4o-latest",
            provider = "holdai",
            chat = true,
            command = true,
            model = { model = "chatgpt-4o-latest" },
            system_prompt = "",
        },
        {

            name = "gpt-4o-mini",
            provider = "holdai",
            chat = true,
            command = true,
            model = { model = "gpt-4o-mini" },
            system_prompt = "",
        },
        {
            name = "claude-3-5-sonnet-latest",
            provider = "holdai",
            chat = true,
            command = true,
            model = { model = "claude-3-5-sonnet-latest" },
            system_prompt = "",
        },
        {
            name = "deepseek-r1",
            provider = "holdai",
            chat = true,
            command = true,
            model = { model = "deepseek-r1" },
            system_prompt = "",
        },
        {
            name = "deepseek-v3",
            provider = "holdai",
            chat = true,
            command = true,
            model = { model = "deepseek-v3" },
            system_prompt = "",
        },
    },
    hooks = {
        BufferChatNew = function(gp, _)
            vim.api.nvim_command("%" .. gp.config.cmd_prefix .. "ChatNew")
        end,
        Explain = function(gp, params)
			local template = "I have the following code from {{filename}}:\n\n"
				.. "```{{filetype}}\n{{selection}}\n```\n\n"
				.. "Please respond by explaining the code above."
			local agent = gp.get_chat_agent("gpt-4o-mini")
			gp.Prompt(params, gp.Target.popup, agent, template)
		end,
        Translator = function(gp, params)
        	local chat_system_prompt = "You are a Translator, please translate between English, Chinese and Japanese. Please provide two sections, the first one shows English Chinese Japanese meaning of the word, each language provide a synonym and meaning in that language, English should have phonetic symbol, Japanese should have gana and romaji. The second section shows some example sentences. Each sentence has English, Chinese and Japanese displayed. In Japanese example, please also show the gana version. The title of the sections should be Meaning and Sentences"
        	local agent = gp.get_chat_agent("gpt-4o-mini")
        	gp.cmd.ChatNew(params, chat_system_prompt, agent)
        end,
    },
})
EOF
hi! link GpExplorerCursorLine CursorLine

" command! -nargs=0 RestRun :lua require("rest-nvim").run()
" command! -nargs=0 RestLast :lua require("rest-nvim").last()
" command! -nargs=0 RestPreview :lua require("rest-nvim").run(true)

fun s:mapMake()
    if &ft == "c" || &ft == "cpp"
        if !exists('g:build')
            let g:build="make -B"
        endif
        if !exists('g:test')
            let g:test="make test"
        endif
        if !exists('g:clean')
            let g:clean="make clean"
        endif
        if !exists('g:run')
            let g:run="make run"
        endif
    endif

    if &ft == "rust"
        if !exists('g:build')
            let g:build="cargo check"
        endif
        if !exists('g:run')
            let g:run="cargo run"
        endif
    endif

    if &ft == "typescript" || &ft == "typescriptreact"
        if !exists('g:build')
            let g:build="npx tsc"
        endif
    endif

    if &ft == "zig"
        if !exists('g:build')
            let g:build="zig build"
        endif
        if !exists('g:run')
            let g:run="zig build run"
        endif
    endif

    if &ft == "http"
        if !exists('g:build')
            nnoremap <silent><c-\> :RestRun<cr>
        endif
    else
        nnoremap <silent><c-\> :call asyncrun#run('', {}, get(g:, 'build', 'echo "no build command"'))<cr>
    endif
endfun

nnoremap <silent><c-\> :call asyncrun#run('', {}, get(g:, 'build', 'echo "no build command"'))<cr>
command! -nargs=0 Run :call asyncrun#run('', {}, get(g:, 'run', 'echo "no run command"'))
command! -nargs=0 Test :call asyncrun#run('', {}, get(g:, 'test', 'echo "no test command"'))
command! -nargs=0 Clean :call asyncrun#run('', {}, get(g:, 'clean', 'echo "no clean command"'))
autocmd WinEnter,BufEnter * call s:mapMake()

lua << EOF
local themes = require('telescope.themes')
local layout = require('telescope.actions.layout')
require("telescope").setup({
  defaults = themes.get_ivy({
    initial_mode = "normal",
    path_display = {
        "truncate",
    },
    results_title = false,
    preview = {
      hide_on_startup = true
    },
    mappings = {
      n = {
        ["p"] = layout.toggle_preview,
      },
    }
  }),
  pickers = {
    find_files = {
      theme = "ivy",
    }
  },
  extensions = {
    coc = {
      theme = 'ivy',
      prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
      push_cursor_on_edit = true, -- save the cursor position to jump back in the future
      timeout = 3000, -- timeout for coc commands
      path_display = {
        "tail",
      },
    }
  },
})
require('telescope').load_extension('coc')
require('telescope').load_extension('vim_bookmarks')
EOF
hi link TelescopeMatching CocSearch
hi link TelescopePromptPrefix CocSearch
hi link TelescopeSelection CursorLine
hi link TelescopePreviewLine CursorLine
nnoremap <silent> <space>f :lua require('telescope.builtin').find_files({ initial_mode = 'insert' })<cr>
nnoremap <silent> <space>u :<C-u>Telescope coc mru<cr>
nnoremap <silent> <space>g :lua require('telescope.builtin').live_grep({ initial_mode = 'insert' })<cr>
nnoremap <silent> <space>y :<C-u>Telescope coc workspace_diagnostics<cr>
nnoremap <silent> <space>s :lua require('telescope').extensions.coc.workspace_symbols({ initial_mode = 'insert' })<cr>
nnoremap <silent> <space>r :<C-u>Telescope coc references_used<cr>
nnoremap <silent> <space>i :<C-u>Telescope coc implementations<cr>
nnoremap <silent> <space>d :<C-u>Telescope coc definitions<cr>
nnoremap <silent> <space>a :lua require('telescope').extensions.coc.file_code_actions()<cr>
nnoremap <silent> <space>c :lua require('telescope').extensions.coc.commands({ initial_mode = 'insert' })<cr>
nnoremap <silent> <space>b :<C-u>Telescope buffers<cr>
nnoremap <silent> <space>p :<C-u>Telescope resume<cr>
nnoremap <silent> <space>m :lua require('telescope').extensions.vim_bookmarks.all()<cr>

" ------------
" gui settings
" ------------

  
hi Cursor guifg=white guibg=#ff5555
set guifont=Sarasa\ Term\ SC\ Nerd:h12
set guicursor=n-v-c:block-Cursor,i-ci-ve:ver30-Cursor

let g:neovide_fullscreen=v:false
let g:neovide_title_background_color = "#1b2b34"
let g:neovide_title_text_color = "white"
let g:neovide_underline_stroke_scale = 0.5

if exists('g:nvui')
  autocmd InsertEnter * NvuiIMEEnable
  autocmd InsertLeave * NvuiIMEDisable
endif

au FileType typescriptreact let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']

nnoremap <silent> <c-r> :r !<c-r><c-l><cr>
