" File              : init.vim
" Date              : 15.10.2019
" Last Modified Date: 15.10.2019
" dein
" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | bash ~/.config/nvim

" if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
" 	call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
" 	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
" endif

if &compatible
  set nocompatible
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim
set runtimepath+=~/AppData/Local/nvim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/plugged/')
  call dein#begin('~/.config/nvim/plugged/')

  call dein#add('~/.config/nvim/repos/github.com/Shougo/dein.vim')

  call dein#add('rhysd/devdocs.vim')

  " Color Schemes
  call dein#add('mhartington/oceanic-next')
  " call dein#add('joshdick/onedark.vim')
  call dein#add('rhysd/vim-color-spring-night')
  " call dein#add('arcticicestudio/nord-vim')
  "
  " For textobj
  " call dein#add('mg979/vim-visual-multi')
  call dein#add('kana/vim-textobj-user')
  call dein#add('kana/vim-textobj-entire', {
        \'on_map': { 'ox': '<Plug>' },
        \'depends': 'vim-textobj-user',
        \'hook_add': join([
        \"omap <silent> ae <Plug>(textobj-entire-a)",
        \"xmap <silent> ae <Plug>(textobj-entire-a)",
        \"omap <silent> ie <Plug>(textobj-entire-i)",
        \"xmap <silent> ie <Plug>(textobj-entire-i)",
        \], "\n")
        \})
  call dein#add('kana/vim-textobj-indent', {
        \'on_map': { 'ox': '<Plug>' },
        \'depends': 'vim-textobj-user',
        \'hook_add': join([
        \"omap <silent> ai <Plug>(textobj-indent-a)",
        \"xmap <silent> ai <Plug>(textobj-indent-a)",
        \"omap <silent> ii <Plug>(textobj-indent-i)",
        \"xmap <silent> ii <Plug>(textobj-indent-i)",
        \"omap <silent> aI <Plug>(textobj-indent-same-a)",
        \"xmap <silent> aI <Plug>(textobj-indent-same-a)",
        \"omap <silent> iI <Plug>(textobj-indent-same-i)",
        \"xmap <silent> iI <Plug>(textobj-indent-same-i)",
        \], "\n")
        \})
  call dein#add('Julian/vim-textobj-variable-segment')
 
  " For delightful editing
  call dein#add('ahonn/vim-fileheader')
  call dein#add('tpope/vim-abolish')
  call dein#add('svermeulen/vim-subversive')
  call dein#add('svermeulen/vim-yoink')
  call dein#add('justinmk/vim-sneak')
  call dein#add('tmhedberg/matchit')
  call dein#add('pbrisbin/vim-mkdir')
  call dein#add('kopischke/vim-stay')
  call dein#add('lfv89/vim-interestingwords')
  call dein#add('voldikss/vim-floaterm')
  call dein#add('skywind3000/vim-terminal-help')
  call dein#add('skywind3000/asyncrun.vim')
  call dein#add('skywind3000/asynctasks.vim')
  call dein#add('roman/golden-ratio')
  call dein#add('kana/vim-operator-user'         , { 'lazy'     : 1 })
  " call dein#add('reedes/vim-wordy'               , { 'on_cmd'   : 'Wordy' })
  call dein#add('vim-scripts/DrawIt'             , { 'on_cmd'   : 'DrawIt' })
  call dein#add('rhysd/git-messenger.vim', {
            \   'lazy' : 1,
            \   'on_cmd' : 'GitMessenger',
            \   'on_map' : '<Plug>(git-messenger',
            \ })
  call dein#add('tyru/open-browser.vim'          , { 'on_map'   : { 'nv': '<Plug>(openbrowser-smart-search)' }})
  call dein#add('moll/vim-bbye'                  , { 'on_cmd'   : 'Bdelete', })
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-rhubarb')
  " call dein#add('eugen0329/vim-esearch')
  " call dein#add('brooth/far.vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('tomtom/tcomment_vim'            , { 'on_cmd'   : ['TComment', 'TCommentAs'] })
  call dein#add('mileszs/ack.vim'                , { 'on_cmd'   : 'Ack' })
  call dein#add('Konfekt/FastFold')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('ntpeters/vim-better-whitespace' , { 'on_event' : 'InsertEnter' })
  call dein#add('MattesGroeger/vim-bookmarks'    , { 'on_cmd'   : 'BookmarkToggle' })
  call dein#add('godlygeek/tabular'              , { 'on_cmd'   : 'Tabularize' })
  call dein#add('ggVGc/vim-fuzzysearch'          , { 'on_cmd'   : 'FuzzySearch' })
  call dein#add('vim-scripts/BufOnly.vim'        , { 'on_cmd'   : 'BufOnly' })
  call dein#add('tpope/vim-obsession'            , { 'on_cmd'   : 'Obsession' })
  call dein#add('AndrewRadev/sideways.vim'       , { 'on_map'   : { 'ox': '<Plug>Sideways' }})
  call dein#add('AndrewRadev/splitjoin.vim'      , { 'on_map'   : { 'n': '<Plug>Splitjoin' }})
  call dein#add('haya14busa/vim-edgemotion'      , { 'on_map'   : { 'nv': '<Plug>' }})
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  call dein#add('pechorin/any-jump.vim')
  call dein#add('guns/xterm-color-table.vim', { 'on_cmd': 'XtermColorTable' })
  call dein#add('powerman/vim-plugin-AnsiEsc')
  call dein#add('inside/vim-search-pulse', {
        \'hook_post_source': join([
        \"let g:vim_search_pulse_mode = 'pattern'",
        \"let g:vim_search_pulse_duration = 400"
        \], "\n")
        \})
  " call dein#add('junegunn/goyo.vim'       , { 'on_cmd': 'Goyo' })
  " call dein#add('junegunn/limelight.vim'  , { 'on_cmd': 'Limelight' })
  call dein#add('Yggdroot/indentLine'     , { 'on_cmd': 'IndentLinesToggle' })
 
  " General
  call dein#add('kkoomen/vim-doge')
  call dein#add('sheerun/vim-polyglot')
  " call dein#add('beeender/Comrade')
  " call dein#add('nvim-treesitter/nvim-treesitter', { 'merged': 0 })
  call dein#add('tpope/vim-fugitive')
  call dein#add('justinmk/vim-dirvish')
  call dein#add('tpope/vim-projectionist')
  call dein#add('liuchengxu/vista.vim')
  call dein#add('neoclide/coc.nvim', { 'rev': 'release' })
  call dein#add('mbbill/undotree', {
        \'on_cmd': 'UndotreeToggle',
        \'hook_add': join([
        \"if has('persistent_undo')",
        \"set undofile",
        \"set undolevels=1000",
        \"set undoreload=10000",
        \"set undodir=~/.undodir/",
        \"endif"
        \], "\n")
        \})
 
  " For binary
  call dein#add('Shougo/vinarise.vim', {
        \'on_cmd': 'Vinarise'
        \})
 
  " For c family
  call dein#add('sakhnik/nvim-gdb', { 'build': './install.sh' })
  call dein#add('tenfyzhong/vim-gencode-cpp', { 'on_ft': ['cpp'] })
 
  " For html / css
  call dein#add('Valloric/MatchTagAlways', {
        \'on_ft': [ 'html', 'xml', 'javascript', 'javascript.jsx', 'typescript.tsx', 'typescriptreact', 'eelixir' ],
        \})
  call dein#add('mattn/emmet-vim', {
        \'on_ft': [ 'html', 'css', 'scss', 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx', 'typescriptreact', 'eelixir' ],
        \})
  " call dein#add('chrisbra/Colorizer', { 'on_cmd': 'ColorToggle' })
 
  " For json
  call dein#add('neoclide/jsonc.vim')

  " For markdown
  call dein#add('iamcco/markdown-preview.nvim', { 'on_ft': ['markdown'],
					\ 'build': 'cd app & yarn install' })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax on

" ----------------------------------------------------------------------------
" Settings: basic
" ----------------------------------------------------------------------------

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

" ----------------------------------------------------------------------------
" Settings: plugin
" ----------------------------------------------------------------------------

" Theme
set t_Co=256

if has('clipboard')
  set clipboard& clipboard+=unnamedplus
endif

if has('termguicolors')
    set termguicolors
endif

" if has('patch-7.4.1778')
"   set guicolors
" endif

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" Close popup menu when leave insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" Respect .editorconfig
" autocmd FileType python,elm,go,c,cpp,h set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType vim,javascript,javascript.jsx,typescript,typescript.tsx,json,css,scss,html,yaml,md       set tabstop=2 shiftwidth=2 expandtab ai

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

autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" ----------------------------------------------------------------------------
" Key Mappings: Customized keys
" ----------------------------------------------------------------------------

" tnoremap <Esc> <C-\><C-n>
" inoremap jj <ESC>
nnoremap == <c-w>=
nnoremap =v <c-w>_
nnoremap =h <c-w><bar>

command Need Ack! '//\ (TODO\|FIXME\|CHANGED\|BUG\|HACK\|FEATURE\|TEMP)'
command TEMP Ack! '//\ TEMP'
command TODO Ack! '//\ TODO'
command FIXME Ack! '//\ FIXME'
command HACK Ack! '//\ HACK'
command FEATURE Ack! '//\ FEATURE'
command BUG Ack! '//\ BUG'
command CHANGED Ack! '//\ CHANGED'

nmap zuz <Plug>(FastFoldUpdate)

nnoremap <leader><space> :StripWhitespace<cr>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a\" :Tabularize /\"<CR>
vmap <Leader>a\" :Tabularize /\"<CR>
nmap <Leader>aa :Tabularize /
vmap <Leader>aa :Tabularize /

nnoremap <leader>fs :FuzzySearch<cr>

if dein#tap('vim-floaterm')

  function! s:runner_proc(opts)
    let curr_bufnr = floaterm#curr()
    if has_key(a:opts, 'silent') && a:opts.silent == 1
      call floaterm#hide()
    endif
    let cmd = 'cd ' . shellescape(getcwd())
    call floaterm#terminal#send(curr_bufnr, [cmd])
    call floaterm#terminal#send(curr_bufnr, [a:opts.cmd])
    stopinsert
    if &filetype == 'floaterm' && g:floaterm_autoinsert
      call floaterm#util#startinsert()
    endif
  endfunction

  let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
  let g:asyncrun_runner.floaterm = function('s:runner_proc')
  " let g:asynctasks_term_pos = 'floaterm'
  let g:floaterm_keymap_toggle = '<c-q>'
  let g:floaterm_wintitle = v:true
  let g:floaterm_width = 0.8
  let g:floaterm_height = 0.8

  nnoremap <c-r> :Ranger<cr>
  command! Ranger FloatermNew vifm
  autocmd User Startified setlocal buflisted
endif

if dein#tap('vim-terminal-help')
  let g:terminal_key = '<leader>t'
  let g:terminal_cwd = 2
  let g:terminal_list = 0
  let g:terminal_height = 12
endif

if dein#tap('far.vim')
  let g:far#source = 'rgnvim'
endif

if dein#tap('vim-esearch')
  call esearch#map('<leader>zz', 'esearch')
  call esearch#map('<leader>zw', 'esearch-word-under-cursor')
  let g:esearch = {
  \ 'adapter':    'rg',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}
endif

if dein#tap('any-jump.vim')
  let g:any_jump_list_numbers = 0
  let g:any_jump_usages_enabled = 1
  let g:any_jump_grouping_enabled = 0
  let g:any_jump_preview_lines_count = 5
  let g:any_jump_max_search_results = 7
  let g:any_jump_search_prefered_engine = 'rg'
  let g:any_jump_results_ui_style = 'filename_first'

  let g:any_jump_window_width_ratio  = 1.0
  let g:any_jump_window_height_ratio = 0.6
  let g:any_jump_window_top_offset   = 0

  nnoremap <leader>n :AnyJump<CR>
  nnoremap <leader>m :AnyJumpLastResults<CR>
endif

if dein#tap('vim-visual-multi')
  let g:VM_Selection_hl     = 'Cursor'
  let g:VM_Mono_Cursor_hl   = 'Cursor'
  let g:VM_Ins_Mode_hl      = 'Cursor'
  let g:VM_Normal_Cursor_hl = 'Cursor'
endif

if dein#tap('javascript-libraries-syntax.vim')
  let b:javascript_lib_use_jquery = 1
  let b:javascript_lib_use_underscore = 1
  let b:javascript_lib_use_backbone = 1
  let b:javascript_lib_use_prelude = 1
  let b:javascript_lib_use_angularjs = 1
  let b:javascript_lib_use_angularui = 1
  let b:javascript_lib_use_angularuirouter = 1
  let b:javascript_lib_use_react = 1
  let b:javascript_lib_use_flux = 1
  let b:javascript_lib_use_requirejs = 1
  let b:javascript_lib_use_sugar = 1
  let b:javascript_lib_use_jasmine = 1
  let b:javascript_lib_use_chai = 1
  let b:javascript_lib_use_handlebars = 1
  let b:javascript_lib_use_ramda = 1
  let b:javascript_lib_use_vue = 1
  let b:javascript_lib_use_d3 = 1
  let b:javascript_lib_use_tape = 1
endif

if dein#tap('vim-doge')
  let g:doge_enable_mappings = 0
  " nnoremap <leader>dd :DogeGenerate<cr>
  command! -nargs=0 Doc :DogeGenerate<cr>
endif

if dein#tap('tcomment_vim')
  nmap <c-_><c-_> :TComment<cr>
  nmap gcc :TComment<cr>
  vmap gc :TComment<cr>
  nmap gca :TCommentAs 
  vmap gca :TCommentAs 
endif

" Plugins

if dein#tap('git-messenger.vim')
  nmap gm <Plug>(git-messenger)
endif

if dein#tap('vista.vim')
  let g:vista_default_executive = 'coc'
  let g:vista_stay_on_open = 1
  let g:vista_echo_cursor_strategy = 'floating_win'
  let g:vista_highlight_whole_line = 1
  let g:vista_sidebar_width = 50
  let g:vista_cursor_delay = 600000
  nmap <space>t :Vista!!<cr>
endif

if dein#tap('vim-yoink')
  nmap [y <plug>(YoinkRotateBack)
  nmap ]y <plug>(YoinkRotateForward)
  nmap p <plug>(YoinkPaste_p)
  nmap P <plug>(YoinkPaste_P)

  let g:yoinkSavePersistently = 1

  nmap <expr> <c-p> yoink#canSwap() ? '<plug>(YoinkPostPasteSwapForward)' : ':<C-u>CocList files<cr>'
  nmap <expr> <c-n> yoink#canSwap() ? '<plug>(YoinkPostPasteSwapBack)' : ''
endif

if dein#tap('vim-subversive')
  nmap <leader>rr <plug>(SubversiveSubstituteRange)
  xmap <leader>rr <plug>(SubversiveSubstituteRange)
  nmap <leader><leader>rr <plug>(SubversiveSubvertRange)
  xmap <leader><leader>rr <plug>(SubversiveSubvertRange)
  xmap s <plug>(SubversiveSubstitute)
  xmap p <plug>(SubversiveSubstitute)
  xmap P <plug>(SubversiveSubstitute)
endif

if dein#tap('coc.nvim')
  let g:coc_global_extensions = [
              \"coc-pairs",
              \"coc-json",
              \"coc-tsserver",
              \"coc-html",
              \"coc-css",
              \"coc-emoji",
              \"coc-ultisnips",
              \"coc-prettier",
              \"coc-yaml",
              \"coc-python",
              \"coc-lists",
              \"coc-word",
              \"coc-tailwindcss",
              \"coc-svg",
              \"coc-git",
              \"coc-marketplace",
              \"coc-import-cost",
              \]

  nmap <space>f :CocCommand explorer<cr>

  function! s:GoToDefinition()
    if CocAction('jumpDefinition')
      return v:true
    endif

    let ret = execute("silent! normal \<C-]>")
    if ret[:5] =~ "Error"
      call searchdecl(expand('<cword>'))
    endif
  endfunction

  xmap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap if <Plug>(coc-funcobj-i)
  omap af <Plug>(coc-funcobj-a)

  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)

  nmap [g <Plug>(coc-git-prevchunk)
  nmap ]g <Plug>(coc-git-nextchunk)
  " nmap gs <Plug>(coc-git-chunkinfo)
  " nmap <silent>gd <Plug>(coc-definition)
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
  nmap <silent> K :call <SID>show_documentation()<cr>
  nmap <silent> gd :call <SID>GoToDefinition()<cr>

  xmap if <Plug>(coc-funcobj-i)
  omap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap af <Plug>(coc-funcobj-a)
  xmap ic <Plug>(coc-classobj-i)
  omap ic <Plug>(coc-classobj-i)
  xmap ac <Plug>(coc-classobj-a)
  omap ac <Plug>(coc-classobj-a)

  nmap <silent> <C-s> <Plug>(coc-range-select)
  xmap <silent> <C-s> <Plug>(coc-range-select)

  augroup Smartf
    autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=white guibg=#ff5555
  augroup end

  " multiple cursors
  " nmap <silent> <C-c> <Plug>(coc-cursors-position)
  " nmap <silent> <C-d> <Plug>(coc-cursors-word)
  " xmap <silent> <C-d> <Plug>(coc-cursors-range)
  " " use normal command like `<leader>xi(`
  " nmap <leader>x  <Plug>(coc-cursors-operator)
  " hi CocCursorRange ctermfg=220 guifg=white guibg=#ff5555

  command! -nargs=0 ColorPresentation :call CocAction('colorPresentation')
  command! -nargs=0 PickColor :call CocAction('pickColor')

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
  " nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>

  inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<tab>"
  let g:coc_snippet_next = '<tab>'
	let g:coc_snippet_prev = '<s-tab>'
	nmap <silent>[c <Plug>(coc-diagnostic-prev)
	nmap <silent>]c <Plug>(coc-diagnostic-next)
  nmap <leader>e <Plug>(coc-diagnostic-info)
  nmap <leader>cl <Plug>(coc-codelens-action)

  command! -nargs=0 Prettier :CocCommand prettier.formatFile
  command! -nargs=0 Format :call CocAction('format')
  command! -nargs=? Fold :call CocAction('fold', <f-args>)
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
  command! -nargs=+ -complete=custom,s:GrepArgs Rgl exe 'CocList grep '.<q-args>
  command! -nargs=0 Rg exe 'CocList -I grep'
  command! -nargs=0 TODO exe "CocList --normal grep //\ TODO"

  function! s:GrepArgs(...)
    let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
          \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
    return join(list, "\n")
  endfunction

  vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
  nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@

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

  function! s:show_documentation()
    if &filetype == 'vim'
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  let g:coc_auto_copen = 0
  autocmd User CocQuickfixChange :Denite -mode=normal quickfix

  augroup mygroup
    autocmd!
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    autocmd FileType typescript,typescript.tsx,typescriptreact,javascript,json,html,scss,css,graphql nmap <space><space> :Prettier<cr>
    autocmd FileType cpp,objcpp,c,svg,python,go,rust,java nmap <space><space> :Format<cr>
  augroup end
endif

if dein#tap('devdocs.vim')
  let g:devdocs_filetype_map = {
    \   'javascriptreact': 'react',
    \   'typescriptreact': 'react',
    \ }
endif

if dein#tap('asyncrun.vim')
  let g:asyncrun_bell = 1

  noremap <leader>q :call asyncrun#quickfix_toggle(30)<cr>

  noremap <leader>ar :AsyncRun -mode=term -pos=bottom 
  " autocmd FileType c,cpp,cmake noremap <leader>m :AsyncRun -mode=term -pos=bottom cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES -B build .<cr>
  " autocmd FileType c,cpp,cmake noremap <leader>c :AsyncRun -mode=term -pos=bottom -cwd=build make<cr>
  " autocmd FileType c,cpp,cmake noremap <leader>cc :AsyncRun -mode=term -pos=bottom make -cwd=build make clean<cr>

  augroup vimrc
    autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(30, 1)
  augroup END
endif

if dein#tap('asynctasks.vim')
  let g:asynctasks_rtp_config = 'asynctasks/tasks.ini'
  let g:asyncrun_open = 6
  let g:asynctasks_term_pos = 'bottom'
  let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg', '.projectionist.json', '.editorconfig', 'compile_commands.json']
  noremap <leader>r :AsyncTask project-run<cr>
  noremap <leader>b :AsyncTask project-build<cr>
  noremap <leader>x :AsyncTask project-test<cr>
  noremap <leader>c :AsyncTask project-clean<cr>
endif

if dein#tap('vim-gencode-cpp')
  noremap <leader>tdc :GenDeclaration<cr>
  noremap <leader>tdd :GenDefinition<cr>
endif

if dein#tap('vim-projectionist')
  augroup user_projectionist
    autocmd!
    autocmd FileType dirvish call ProjectionistDetect(resolve(expand('%:p')))
  augroup END
endif

if dein#tap('gina.vim')
  command Blame Gina blame --width=100 --format="%su %= %ti %au"
endif

if dein#tap('vim-signify')
  nmap ]h <plug>(signify-next-hunk)
  nmap [h <plug>(signify-prev-hunk)

  omap ih <plug>(signify-motion-inner-pending)
  xmap ih <plug>(signify-motion-inner-visual)
  omap ah <plug>(signify-motion-outer-pending)
  xmap ah <plug>(signify-motion-outer-visual)
endif

if dein#tap('vim-interestingwords')
  let g:interestingWordsRandomiseColors = 0
  let g:interestingWordsDefaultMappings = 0
  let g:interestingWordsGUIColors = ['#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
  let g:interestingWordsTermColors = ['121', '211', '137', '214', '222']

  nnoremap <silent> <leader>w :call InterestingWords('n')<cr>
  vnoremap <silent> <leader>w :call InterestingWords('v')<cr>
  nnoremap <silent> <leader>W :call UncolorAllWords()<cr>
  nnoremap <silent> ]] :call WordNavigation(1)<cr>
  nnoremap <silent> [[ :call WordNavigation(0)<cr>
endif

if dein#tap('vim-sneak')
  let g:sneak#label = 1
endif

if dein#tap('MatchTagAlways')
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
endif

if dein#tap('open-browser.vim')
  nmap gx <Plug>(openbrowser-smart-search)
  vmap gx <Plug>(openbrowser-smart-search)
endif

if dein#tap('undotree')
  nnoremap <leader>ud :UndotreeToggle<cr>
endif

autocmd FileType go highlight default link goErr WarningMsg |
				\ match goErr /\<err\>/
if dein#tap('vim-go')
	autocmd FileType go
		\   nmap <C-]> <Plug>(go-def)
		\ | nmap <Leader>god  <Plug>(go-describe)
		\ | nmap <Leader>goc  <Plug>(go-callees)
		\ | nmap <Leader>goC  <Plug>(go-callers)
		\ | nmap <Leader>goi  <Plug>(go-info)
		\ | nmap <Leader>gom  <Plug>(go-implements)
		\ | nmap <Leader>gos  <Plug>(go-callstack)
		\ | nmap <Leader>goe  <Plug>(go-referrers)
		\ | nmap <Leader>gor  <Plug>(go-run)
		\ | nmap <Leader>gov  <Plug>(go-vet)
endif

if dein#tap('emmet-vim')
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
endif

if dein#tap('vim-operator-flashy')
  let g:operator#flashy#flash_time = 300
  hi Flashy term=bold ctermbg=1 guibg=red
  " 	map y <Plug>(operator-flashy)
  " 	nmap Y <Plug>(operator-flashy)$
endif

if dein#tap('vim-bbye')
  command! -bang -complete=buffer -nargs=? BD Bdelete<bang> <args>
endif

if dein#tap('ack.vim')
  if executable('ag')
    let g:ackprg = 'ag --vimgrep'
  endif
  autocmd Syntax * call matchadd('Todo',  '\\W\\zs\\(TODO\\|FIXME\\|CHANGED\\|BUG\\|HACK\\|FEATURE\\)')
endif

if dein#tap('vim-stay')
  set viewoptions=cursor,folds,slash,unix
endif

if dein#tap('FastFold')
  let g:fastfold_savehook = 1
  let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
  let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
  let g:javascript_folding = 1
endif

if dein#tap('vim-better-whitespace')
  let g:better_whitespace_filetypes_blacklist = ['diff', 'gitcommit', 'unite', 'qf', 'help', 'far_vim']
  let g:better_whitespace_filetypes_verbosity = 1
  let g:better_whitespace_guicolor = '#6D6D6D'
  let g:better_whitespace_ctermcolor = '244'
endif

if dein#tap('vim-bookmarks')
  nnoremap <Leader>mm :BookmarkToggle<cr>
  nnoremap <Leader>mi :BookmarkAnnotate<cr>
  nnoremap <Leader>ma :BookmarkShowAll<cr>
  nnoremap <Leader>j :BookmarkNext<cr>
  nnoremap <Leader>k :BookmarkPrev<cr>
  nnoremap <Leader>mc :BookmarkClear<cr>
  nnoremap <Leader>mx :BookmarkClearAll<cr>

  let g:bookmark_sign = '♥'
  let g:bookmark_highlight_lines = 1
  let g:bookmark_no_default_key_mappings = 1
  hi BookMarkLine ctermbg=black ctermfg=none
  hi BookMarkSign ctermbg=none ctermfg=none
endif

if dein#tap('ultisnips')
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
endif

if dein#tap('sideways.vim')
  nnoremap <leader>h :SidewaysLeft<cr>
  nnoremap <leader>l :SidewaysRight<cr>
  omap aa <Plug>SidewaysArgumentTextobjA
  xmap aa <Plug>SidewaysArgumentTextobjA
  omap ia <Plug>SidewaysArgumentTextobjI
  xmap ia <Plug>SidewaysArgumentTextobjI
endif

if dein#tap('splitjoin.vim')
  let g:splitjoin_join_mapping = ''
  let g:splitjoin_split_mapping = ''
  nmap gJ :SplitjoinJoin<CR>
  nmap gS :SplitjoinSplit<CR>
endif

if dein#tap('vim-edgemotion')
  map <c-j> <Plug>(edgemotion-j)
  map <c-k> <Plug>(edgemotion-k)
  vmap <c-j> <Plug>(edgemotion-j)
  vmap <c-k> <Plug>(edgemotion-k)
endif

if dein#tap('golden-ratio')
  let g:golden_ratio_exclude_nonmodifiable = 1
  let g:golden_ratio_autocommand = 0

  nmap <silent><leader>z <Plug>(golden_ratio_resize)
endif

if dein#tap('vim-dirvish')
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

if dein#tap('indentLine')
  let g:indentLine_enabled = 0
  nnoremap <leader>i :IndentLinesToggle<cr>
endif

" nnoremap <Leader>M :bn<cr>
" nnoremap <Leader>m :bp<cr>
nnoremap <Leader><leader> <C-^>
nnoremap qq :bd<cr>

nnoremap <silent> qo :BufOnly<cr>
nnoremap <silent> qoo :BufOnly!<cr>
" endif

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

nnoremap <Leader>; A;<ESC>
nnoremap <Leader>cc A,<ESC>
nnoremap <Leader>. A.<ESC>
nnoremap <Leader>\ A \<ESC>
" nnoremap <Leader>e :tabnew 
nnoremap <Leader>ee :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>ef :e <C-R>=expand('%')<CR>

nnoremap <Leader>ec :tabnew ~/AppData/Local/nvim/init.vim
if has('macunix')
    nnoremap <Leader>ec :tabnew ~/.config/nvim/init.vim
endif

nnoremap tp :tabprev<cr>
nnoremap tn :tabnext<cr>

" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" No Highlight
nnoremap <silent><esc> :noh<return><esc>
nnoremap <silent><cr> :noh<cr>

" I can type :help on my own, thanks.
noremap <F1> <esc>

" Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Remap U to <C-r> for easier redo
nnoremap U <C-r>

" Maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

" Move visual block
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

if has('macunix')
  " pbcopy for OSX copy/paste
  " vnoremap <C-x> :!pbcopy<cr>
  " vnoremap <C-c> :w !pbcopy<cr><cr>
endif

" nnoremap <leader>u :<C-u>MiniBrowser <C-r><C-p><CR>
" function! s:devdocs(query) abort
"     if a:query ==# ''
"         let cword = expand('<cword>')
"         if cword ==# ''
"             MiniBrowser http://devdocs.io/
"         else
"             execute 'MiniBrowser' 'http://devdocs.io/#q='.escape(cword, ' \')
"         endif
"         return
"     endif
"
"     execute 'MiniBrowser' 'http://devdocs.io/#q='.escape(a:query, ' \')
" endfunction
" command! -nargs=* DevDocs call <SID>devdocs(<q-args>)

command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'

autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif

function! s:patch_oceanic_next_colors()
  hi StatusLine ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  hi StatusLineNC ctermfg=235 ctermbg=145 guibg=#65737e guifg=#1b2b34
  hi TabLine cterm=NONE ctermfg=145 ctermbg=235 gui=NONE guibg=#1b2b34 guifg=#65737e
  hi TabLineSel ctermfg=145 ctermbg=345 guibg=#1b2b34 guifg=#ff5555
  hi TabLineFill ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  hi PmenuSel ctermbg=145 guibg=#ff5555
  hi WildMenu ctermbg=145 guibg=#ff5555
  hi Type ctermfg=221 guifg=#fac863 term=NONE gui=NONE
  " hi! link Special Keyword

  hi DiffAdd ctermfg=2 ctermbg=0 guifg=#A3BE8C guibg=#2E3440
  hi DiffChange ctermfg=3 ctermbg=0 guifg=#EBCB8B guibg=#2E3440
  hi DiffDelete ctermfg=1 ctermbg=0 guifg=#BF616A guibg=#2E3440
  hi DiffText ctermfg=4 ctermbg=0 guifg=#81A1C1 guibg=#2E3440
  hi! link DiffAdded DiffAdd
  hi! link DiffChanged DiffChange
  hi! link DiffRemoved DiffDelete

  let s:nord0_gui = "#2E3440"
  let s:nord1_gui = "#3B4252"
  let s:nord2_gui = "#434C5E"
  let s:nord3_gui = "#4C566A"
  let s:nord4_gui = "#D8DEE9"
  let s:nord5_gui = "#E5E9F0"
  let s:nord6_gui = "#ECEFF4"
  let s:nord7_gui = "#8FBCBB"
  let s:nord8_gui = "#88C0D0"
  let s:nord9_gui = "#81A1C1"
  let s:nord10_gui = "#5E81AC"
  let s:nord11_gui = "#BF616A"
  let s:nord12_gui = "#D08770"
  let s:nord13_gui = "#EBCB8B"
  let s:nord14_gui = "#A3BE8C"
  let s:nord15_gui = "#B48EAD"

  let s:nord1_term = "0"
  let s:nord3_term = "8"
  let s:nord5_term = "7"
  let s:nord6_term = "15"
  let s:nord7_term = "14"
  let s:nord8_term = "6"
  let s:nord9_term = "4"
  let s:nord10_term = "12"
  let s:nord11_term = "1"
  let s:nord12_term = "11"
  let s:nord13_term = "3"
  let s:nord14_term = "2"
  let s:nord15_term = "5"

  let g:terminal_color_0 = s:nord1_gui
  let g:terminal_color_1 = s:nord11_gui
  let g:terminal_color_2 = s:nord14_gui
  let g:terminal_color_3 = s:nord13_gui
  let g:terminal_color_4 = s:nord9_gui
  let g:terminal_color_5 = s:nord15_gui
  let g:terminal_color_6 = s:nord8_gui
  let g:terminal_color_7 = s:nord5_gui
  let g:terminal_color_8 = s:nord3_gui
  let g:terminal_color_9 = s:nord11_gui
  let g:terminal_color_10 = s:nord14_gui
  let g:terminal_color_11 = s:nord13_gui
  let g:terminal_color_12 = s:nord9_gui
  let g:terminal_color_13 = s:nord15_gui
  let g:terminal_color_14 = s:nord7_gui
  let g:terminal_color_15 = s:nord6_gui
endfunction

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
  hi Search ctermfg=0 ctermbg=6 guibg=#88C0D0 guifg=#3B4252
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

autocmd! ColorScheme OceanicNext call s:patch_oceanic_next_colors()
autocmd! ColorScheme spring-night call s:patch_spring_night_colors()

if dein#tap('vim-color-spring-night')
  colorscheme spring-night
else
  colorscheme desert
endif

if dein#tap('oceanic-next')
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
endif

" For error highlight
" set spell
hi clear SpellBad
hi SpellBad term=underline cterm=underline
" hi clear SpellCap
" hi clear SpellRare
" hi clear SpellLocal
" hi SpellCap term=underline cterm=underline
" hi SpellRare term=underline cterm=underline
" hi SpellLocal term=underline cterm=underline

function s:SetCursorLine()
  set cursorline
  hi cursorline cterm=none ctermbg=235
endfunction
autocmd VimEnter * call s:SetCursorLine()
