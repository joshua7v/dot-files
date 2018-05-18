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

if dein#load_state('~/.config/nvim/plugged/')
  call dein#begin('~/.config/nvim/plugged/')

  call dein#add('~/.config/nvim/repos/github.com/Shougo/dein.vim')

  " For Nyaovim
  call dein#add('rhysd/nyaovim-mini-browser')

  " Color Schemes
  call dein#add('mhartington/oceanic-next')
  call dein#add('arcticicestudio/nord-vim')

  " Edit
  " For textobj
  call dein#add('kana/vim-textobj-user')
  call dein#add('kana/vim-textobj-function', {
        \'on_map': { 'ox': '<Plug>' },
        \'depends': 'vim-textobj-user',
        \'hook_add': join([
        \"omap <silent> af <Plug>(textobj-function-a)",
        \"xmap <silent> af <Plug>(textobj-function-a)",
        \"omap <silent> if <Plug>(textobj-function-i)",
        \"xmap <silent> if <Plug>(textobj-function-i)",
        \], "\n")
        \})
  call dein#add('kana/vim-textobj-syntax', {
        \'on_map': { 'ox': '<Plug>' },
        \'depends': 'vim-textobj-user',
        \'hook_add': join([
        \"omap <silent> ay <Plug>(textobj-syntax-a)",
        \"xmap <silent> ay <Plug>(textobj-syntax-a)",
        \"omap <silent> iy <Plug>(textobj-syntax-i)",
        \"xmap <silent> iy <Plug>(textobj-syntax-i)",
        \], "\n")
        \})
  call dein#add('kana/vim-textobj-datetime', {
        \'on_map': { 'ox': '<Plug>' },
        \'depends': 'vim-textobj-user',
        \'hook_add': join([
        \"omap <silent> ada <Plug>(textobj-datetime-auto)",
        \"xmap <silent> ada <Plug>(textobj-datetime-auto)",
        \"omap <silent> ida <Plug>(textobj-datetime-auto)",
        \"xmap <silent> ida <Plug>(textobj-datetime-auto)",
        \], "\n")
        \})
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
  call dein#add('jceb/vim-textobj-uri')
  call dein#add('Julian/vim-textobj-variable-segment')
  call dein#add('fvictorio/vim-textobj-backticks')
  call dein#add('glts/vim-textobj-comment', {
        \'on_map': { 'ox': '<Plug>' },
        \'depends': 'vim-textobj-user',
        \'hook_add': join([
        \"omap <silent> ac <Plug>(textobj-comment-a)",
        \"xmap <silent> ac <Plug>(textobj-comment-a)",
        \"omap <silent> ic <Plug>(textobj-comment-i)",
        \"xmap <silent> ic <Plug>(textobj-comment-i)",
        \], "\n")
        \})

  call dein#add('justinmk/vim-sneak')
  call dein#add('bfredl/nvim-miniyank')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tmhedberg/matchit')
  call dein#add('pbrisbin/vim-mkdir')
  call dein#add('kopischke/vim-stay')
  call dein#add('itchyny/vim-gitbranch')
  call dein#add('t9md/vim-quickhl')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('kana/vim-operator-user'         , { 'lazy'     : 1 })
  call dein#add('reedes/vim-wordy'               , { 'on_cmd'   : 'Wordy' })
  call dein#add('vim-scripts/DrawIt'             , { 'on_cmd'   : 'DrawIt' })
  call dein#add('tyru/open-browser.vim'          , { 'on_map'   : { 'nv': '<Plug>(openbrowser-smart-search)' }})
  call dein#add('moll/vim-bbye'                  , { 'on_cmd'   : 'Bdelete', })
  call dein#add('tpope/vim-unimpaired'           , { 'on_event' : 'VimEnter' })
  call dein#add('tpope/vim-eunuch'               , { 'on_event' : 'VimEnter' })
  call dein#add('eugen0329/vim-esearch'          , { 'on_event' : 'VimEnter' })
  call dein#add('editorconfig/editorconfig-vim'  , { 'on_event' : 'VimEnter' })
  call dein#add('tomtom/tcomment_vim'            , { 'on_cmd'   : ['TComment', 'TCommentAs'] })
  call dein#add('metakirby5/codi.vim'            , { 'on_cmd'   : 'Codi' })
  call dein#add('mileszs/ack.vim'                , { 'on_cmd'   : 'Ack' })
  call dein#add('Konfekt/FastFold'               , { 'on_event' : 'VimEnter' })
  " call dein#add('easymotion/vim-easymotion'      , { 'on_map'   : { 'n': '<Plug>' }})
  call dein#add('tpope/vim-surround'             , { 'on_event' : 'VimEnter' })
  " call dein#add('tpope/tpope-vim-abolish'        , { 'on_event' : 'VimEnter' })
  call dein#add('tpope/vim-repeat'               , { 'on_event' : 'VimEnter' })
  call dein#add('ntpeters/vim-better-whitespace' , { 'on_event' : 'InsertEnter' })
  call dein#add('MattesGroeger/vim-bookmarks'    , { 'on_cmd'   : 'BookmarkToggle' })
  call dein#add('godlygeek/tabular'              , { 'on_cmd'   : 'Tabularize' })
  call dein#add('ggVGc/vim-fuzzysearch'          , { 'on_cmd'   : 'FuzzySearch' })
  call dein#add('vim-scripts/BufOnly.vim'        , { 'on_cmd'   : 'BufOnly' })
  call dein#add('sbdchd/neoformat'               , { 'on_cmd'   : 'Neoformat' })
  call dein#add('tpope/vim-obsession'            , { 'on_cmd'   : 'Obsession' })
  call dein#add('AndrewRadev/sideways.vim'       , { 'on_map'   : { 'ox': '<Plug>Sideways' }})
  call dein#add('AndrewRadev/splitjoin.vim'      , { 'on_map'   : { 'n': '<Plug>Splitjoin' }})
  call dein#add('haya14busa/vim-edgemotion'      , { 'on_map'   : { 'nv': '<Plug>' }})
  call dein#add('terryma/vim-expand-region'      , { 'on_map'   : { 'x': '<Plug>' }})
  call dein#add('haya14busa/vim-operator-flashy', {
        \'depends': 'vim-operator-user',
        \'on_map': { 'nx': '<Plug>' }
        \})
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  call dein#add('Shougo/neosnippet', {
        \'hook_add': join([
        \"let g:neosnippet#enable_snipmate_compatibility = 0",
        \"let g:neosnippet#enable_completed_snippet = 1",
        \"let g:neosnippet#expand_word_boundary = 1",
        \"let g:neosnippet#snippets_directory = [",
        \"\\ $HOME.'/.config/nvim/snippets/',",
        \"\\ $HOME.'/.config/nvim/plugged/repos/github.com/honza/vim-snippets/snippets/',",
        \"\\ ]",
        \], "\n")
        \})

  " UI
  call dein#add('kshenoy/vim-signature')
  call dein#add('guns/xterm-color-table.vim', { 'on_cmd': 'XtermColorTable' })
  call dein#add('powerman/vim-plugin-AnsiEsc', { 'on_event': 'VimEnter' })
  call dein#add('inside/vim-search-pulse', {
        \'on_event': 'VimEnter',
        \'hook_post_source': join([
        \"let g:vim_search_pulse_mode = 'pattern'",
        \"let g:vim_search_pulse_duration = 400"
        \], "\n")
        \})
  call dein#add('vim-airline/vim-airline' , { 'on_cmd': 'AirlineToggle' })
  call dein#add('Yggdroot/indentLine'     , { 'on_cmd': 'IndentLinesToggle' })
  call dein#add('junegunn/goyo.vim'       , { 'on_cmd': 'Goyo' })
  call dein#add('junegunn/limelight.vim'  , { 'on_cmd': 'Limelight' })
  call dein#add('itchyny/calendar.vim'    , { 'on_cmd': 'Calendar' })

  " General
  call dein#add('junegunn/vim-peekaboo')
  call dein#add('Shougo/echodoc.vim', {
        \'on_event': 'CompleteDone',
        \'hook_post_source': 'call echodoc#enable()'
        \})
  call dein#add('Shougo/deol.nvim', { 'on_cmd': 'Deol' })
  call dein#add('Lenovsky/nuake', { 'on_cmd': 'Nuake' })
  call dein#add('zefei/vim-wintabs', {
        \'on_cmd': 'WintabsRefresh',
        \'hook_add': join([
        \"let g:wintabs_display='statusline'",
        \"let g:wintabs_ui_sep_leftmost='|'",
        \"let g:wintabs_ui_sep_rightmost='|'",
        \"let g:wintabs_ui_active_left='|'",
        \"let g:wintabs_ui_active_right='|'",
        \"let g:wintabs_ui_buffer_name_format='%n %t'",
        \], "\n")
        \})
  call dein#add('lambdalisue/gina.vim', { 'on_cmd': 'Gina' })
  call dein#add('Shougo/denite.nvim', {
        \'on_cmd': 'Denite',
        \'hook_source': join([
        \"call denite#custom#option('default', 'prompt', 'λ:')",
        \"call denite#custom#option('default', 'empty', 0)",
        \"call denite#custom#option('default', 'auto_resize', 1)",
        \"call denite#custom#filter('matcher_ignore_globs', 'ignore_globs', [ '.git/', '.ropeproject/', '__pycache__/', 'images/', '*.min.*', 'bundle.js', 'img/', 'fonts/'])",
        \"call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])",
        \"call denite#custom#var('buffer', 'date_format', '')",
        \"call denite#custom#var('session', 'path', '~/.vim/session')",
        \"call denite#custom#var('grep', 'command', ['ag'])",
        \"call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])",
        \"call denite#custom#var('grep', 'recursive_opts', [])",
        \"call denite#custom#var('grep', 'pattern_opt', [])",
        \"call denite#custom#var('grep', 'separator', ['--'])",
        \"call denite#custom#var('grep', 'final_opts', [])",
        \"call denite#custom#map('insert','<c-a>','<denite:move_caret_to_head>','noremap')",
        \"call denite#custom#map('insert','<down>','<denite:move_to_next_line>','noremap')",
        \"call denite#custom#map('insert','<up>','<denite:move_to_previous_line>','noremap')",
        \"call denite#custom#map('insert','<c-t>','<denite:do_action:tabopen>','noremap')",
        \"call denite#custom#map('insert','<c-d>','<denite:do_action:delete>','noremap')",
        \"call denite#custom#map('insert','<c-b>','<denite:scroll_page_backwards>','noremap')",
        \"call denite#custom#map('insert','<c-f>','<denite:scroll_page_forwards>','noremap')",
        \"call denite#custom#map('insert','<c-p>','<denite:print_messages>','noremap')",
        \"call denite#custom#map('normal','<esc>','<denite:quit>','noremap')",
        \"call denite#custom#map('normal','a','<denite:do_action:add>','noremap')",
        \"call denite#custom#map('normal','d','<denite:do_action:delete>','noremap')",
        \"call denite#custom#map('normal','r','<denite:do_action:reset>','noremap')",
        \"call denite#custom#map('normal','e','<denite:do_action:edit>','noremap')",
        \"call denite#custom#map('normal','h','<denite:do_action:help>','noremap')",
        \"call denite#custom#map('normal','u','<denite:do_action:update>','noremap')",
        \"call denite#custom#map('normal','f','<denite:do_action:find>','noremap')",
        \"call denite#custom#map('insert','<esc>','<denite:enter_mode:normal>','noremap')",
        \"call denite#custom#map('insert','<c-i>','<denite:do_action:split>','noremap')",
        \"call denite#custom#map('normal','<c-i>','<denite:do_action:split>','noremap')",
        \"call denite#custom#map('insert','<c-s>','<denite:do_action:vsplit>','noremap')",
        \"call denite#custom#map('normal','<c-s>','<denite:do_action:vsplit>','noremap')",
        \"call denite#custom#map('normal','dw','<denite:delete_word_after_caret>','noremap')",
        \"hi link deniteMatchedChar Special"
        \], "\n")
        \})
  call dein#add('w0rp/ale', {
        \'on_cmd': ['ALEEnable', 'ALEToggle'],
        \'hook_post_source': 'set statusline+=\ %{LinterStatus()}'
        \})
  call dein#add('justinmk/vim-dirvish')
  " call dein#add('autozimu/LanguageClient-neovim', {
  "       \'rev': 'next',
  "       \'build': 'bash install.sh'
  "       \})
  call dein#add('kien/rainbow_parentheses.vim', {
        \'on_cmd': 'RainbowParenthesesToggle'
        \})
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('Shougo/deoplete.nvim', {
        \'depends': 'context_filetype.vim',
        \'hook_add': join([
        \"let g:deoplete#enable_at_startup=0",
        \"let g:deoplete#enable_refresh_always=0",
        \"let g:deoplete#enable_camel_case=1",
        \"let g:deoplete#tag#cache_limit_size=800000",
        \"let g:deoplete#file#enable_buffer_path=1",
        \"let g:deoplete#auto_complete_delay=50",
        \"let g:deoplete#auto_refresh_delay=0",
        \"let g:deoplete#disable_auto_complete=0",
        \"let g:deoplete#num_processes=1",
        \"set splitbelow",
        \"set completeopt+=noselect",
        \], "\n"),
        \'hook_post_source': join([
        \"imap <expr><C-u>   pumvisible() ? '<Down>' : '<C-u>'",
        \"imap <expr><C-i>   pumvisible() ? '<Up>' : '<C-i>'",
        \], "\n")
        \})
  call dein#add('yyotti/denite-marks'     , { 'on_source' : 'denite.nvim' })
  call dein#add('Shougo/neomru.vim'       , { 'on_source' : 'denite.nvim' })
  call dein#add('chemzqm/denite-extra'    , { 'on_source' : 'denite.nvim' })
  call dein#add('chemzqm/unite-location'  , { 'on_source' : 'denite.nvim' })
  call dein#add('rafi/vim-denite-session' , { 'on_source' : 'denite.nvim' })
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

  " Git
  call dein#add('airblade/vim-gitgutter', {
        \'on_cmd': ['GitGutterEnable', 'GitGutterToggle'],
        \'hook_source': join([
        \"nmap ]h <Plug>GitGutterNextHunk",
        \"nmap [h <Plug>GitGutterPrevHunk",
        \"nmap <Leader>hs <Plug>GitGutterStageHunk",
        \"nmap <Leader>hu <Plug>GitGutterUndoHunk",
        \"nmap <Leader>hp <Plug>GitGutterPreviewHunk"
        \], "\n")
        \})

  " For binary
  call dein#add('Shougo/vinarise.vim', {
        \'on_cmd': 'Vinarise'
        \})

  " For c family
  call dein#add('Shougo/deoplete-clangx', {
        \'on_ft': [ 'c', 'cpp' ],
        \'hook_add': 'let g:c_syntax_for_h = 1'
        \})

  " For html / css
  call dein#add('cakebaker/scss-syntax.vim', {
        \'on_ft': 'scss'
        \})
  " call dein#add('tpope/vim-haml', {
  "       \'on_ft': [ 'scss', 'sass', 'haml' ]
  "       \})
  call dein#add('Valloric/MatchTagAlways', {
        \'on_ft': [ 'html', 'xml', 'javascript', 'javascript.jsx', 'typescript.tsx', 'eelixir' ],
        \})
  call dein#add('hail2u/vim-css3-syntax', {
        \'on_ft': 'css'
        \})
  call dein#add('mattn/emmet-vim', {
        \'on_ft': [ 'html', 'css', 'scss', 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx', 'eelixir' ],
        \})
  call dein#add('chrisbra/Colorizer', { 'on_cmd': 'ColorToggle' })
  call dein#add('othree/html5.vim', {
        \'on_ft': 'html', 'hook_add': join([
        \"let g:html5_event_handler_attributes_complete = 0",
        \"let g:html5_rdfa_attributes_complete = 0",
        \"let g:html5_microdata_attributes_complete = 0",
        \"let g:html5_aria_attributes_complete = 0"
        \], "\n")
        \})
  call dein#add('digitaltoad/vim-pug', { 'on_ft': 'pug' })

  " For javascript
  call dein#add('moll/vim-node', {
        \'on_ft': [ 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx' ]
        \})
  call dein#add('styled-components/vim-styled-components', {
        \'on_ft': [ 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx' ]
        \})
  call dein#add('ternjs/tern_for_vim', {
        \'on_ft': [ 'javascript', 'javascript.jsx' ],
        \})
  call dein#add('carlitux/deoplete-ternjs', {
        \'on_event': 'VimEnter',
        \'on_ft': [ 'javascript', 'javascript.jsx' ],
        \'hook_add': join([
        \"let g:tern_request_timeout = 1",
        \"let g:tern_show_signature_in_pum = '0'",
        \"let g:deoplete#sources#ternjs#types = 1",
        \"let g:deoplete#sources#ternjs#depths = 1",
        \"let g:deoplete#sources#ternjs#docs = 1",
        \"let g:deoplete#sources#ternjs#filter = 0",
        \"let g:deoplete#sources#ternjs#case_insensitive = 1",
        \"let g:deoplete#sources#ternjs#include_keywords = 1",
        \"let g:deoplete#sources#ternjs#filetypes = [ 'javascript', 'javascript.jsx', 'vue' ]"
        \], "\n")
        \})
  call dein#add('chemzqm/vim-jsx-improve', {
        \'on_ft': [ 'javascript', 'javascript.jsx' ]
        \})
  call dein#add('heavenshell/vim-jsdoc', {
        \'on_ft': [ 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx' ]
        \})

  " For vim
  call dein#add('Shougo/neco-vim', {
        \'on_ft': 'vim'
        \})

  " For json
  call dein#add('elzr/vim-json', {
        \'on_ft': 'json',
        \'hook_add': "let g:vim_json_syntax_conceal = 0"
        \})

  " For elm
  call dein#add('ElmCast/elm-vim', {
        \'on_ft': 'elm',
        \'hook_add': join([
        \"let g:elm_setup_keybindings = 0",
        \"let g:elm_make_show_warnings = 0",
        \"let g:elm_detailed_complete = 1",
        \"let g:elm_format_autosave = 0",
        \"let g:elm_format_fail_silently = 1",
        \"let g:elm_format_two_spaces = 1"
        \], "\n")
        \})

  " For typescript
  call dein#add('mhartington/nvim-typescript', {
        \'on_ft': [ 'typescript', 'typescript.tsx' ]
        \})
  call dein#add('leafgarland/typescript-vim', {
        \'on_ft': [ 'typescript', 'typescript.tsx' ]
        \})
  call dein#add('joshua7v/vim-tsx-improve', {
        \'on_ft': [ 'typescript', 'typescript.tsx' ]
        \})

  " For elixir
  call dein#add('elixir-editors/vim-elixir', {
        \'on_ft': [ 'elixir', 'eelixir' ]
        \})
  call dein#add('slashmili/alchemist.vim', {
        \'on_ft': 'elixir'
        \})

  " For python
  call dein#add('davidhalter/jedi-vim', {
        \'on_ft': 'python',
        \'hook_add': join([
        \"let g:jedi#completions_enabled = 1",
        \"let g:jedi#auto_vim_configuration = 0",
        \"let g:jedi#smart_auto_mappings = 0",
        \"let g:jedi#show_call_signatures = 1",
        \"let g:jedi#force_py_version = 3"
        \], "\n"),
        \'hook_source': join([
        \"let g:jedi#use_tag_stack = 0",
        \"let g:jedi#popup_select_first = 0",
        \"let g:jedi#popup_on_dot = 0",
        \"let g:jedi#max_doc_height = 100",
        \"let g:jedi#quickfix_window_height = 10",
        \"let g:jedi#use_splits_not_buffers = 'right'"
        \], "\n")
        \})

  " For go
  call dein#add('fatih/vim-go', {
        \'on_event': 'InsertEnter',
        \'on_ft': 'go'
        \})
  call dein#add('nsf/gocode', {
        \'rtp': 'nvim',
        \'on_ft': 'go',
        \'build': '~/.config/nvim/plugged/repos/github.com/nsf/gocode/nvim/symlink.sh'
        \})

  " For api
  call dein#add('kylef/apiblueprint.vim', { 'on_ft': 'apiblueprint' })

  " For docker
  call dein#add('ekalinin/Dockerfile.vim', { 'on_ft': ['Dockerfile', 'docker-compose'] })

  " For yaml
  call dein#add('stephpy/vim-yaml', { 'on_ft': 'yaml' })

  " For graphql
  call dein#add('jparise/vim-graphql', { 'on_ft': ['graphql', 'typescript', 'typescript.tsx'] })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" ----------------------------------------------------------------------------
" Settings: basic
" ----------------------------------------------------------------------------

let g:mapleader = ','
set nocompatible

set confirm
set background=dark
set t_ut=
set history=200           " history: number of command-lines remembered
set autoread              " auto reload file after being modified
set shortmess=atIcF         " do not show initial page
set nobackup
set noswapfile
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
set foldmethod=indent " options: manual, indent, expr, syntax, diff, marker
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
set scrolloff=7    " Set 7 lines to the cursor - when moving vertically using j/k

" File encode:encode for varied filetype
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8

set ffs=unix,dos,mac         " Use Unix as the standard file type
set formatoptions+=m
set formatoptions+=B         " When joining lines, don't insert a space between two multi-byte characters.
set completeopt=longest,menu " behaviour of insert mode completion
set wildmenu                 " auto complete command
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
autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

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

function! s:patch_oceanic_next_colors()
  hi StatusLine ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  hi StatusLineNC ctermfg=235 ctermbg=145 guibg=#65737e guifg=#1b2b34
  hi TabLine cterm=NONE ctermfg=145 ctermbg=235 gui=NONE guibg=#1b2b34 guifg=#65737e
  hi TabLineSel ctermfg=145 ctermbg=345 guibg=#1b2b34 guifg=#ff5555
  hi TabLineFill ctermfg=235 ctermbg=145 guibg=#ff5555 guifg=#1b2b34
  hi PmenuSel ctermbg=145 guibg=#ff5555
  hi WildMenu ctermbg=145 guibg=#ff5555
  hi Search ctermfg=0 ctermbg=6 guibg=#88C0D0 guifg=#3B4252

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

autocmd! ColorScheme OceanicNext call s:patch_oceanic_next_colors()

if dein#tap('oceanic-next')
  colorscheme OceanicNext
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
else
  colorscheme desert
endif

if dein#tap('nord-vim')
  let g:nord_italic = 1
  let g:nord_italic_comments = 1
  let g:nord_uniform_status_lines = 0
  let g:nord_comment_brightness = 20
  let g:nord_uniform_diff_background = 1
endif

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

" autocmd FileType python,elm,go set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType vim,javascript,json,css,scss,html,yaml,typescript,typescript.tsx,javascript.jsx,md,ex,exs set tabstop=2 shiftwidth=2 expandtab ai
autocmd FileType vim set tabstop=2 shiftwidth=2 expandtab ai

autocmd BufNewFile,BufRead .tern-project setfiletype json
autocmd BufNewFile,BufRead .jsbeautifyrc setfiletype json
autocmd BufNewFile,BufRead .eslintrc     setfiletype json
autocmd BufNewFile,BufRead .babelrc      setfiletype json
autocmd BufNewFile,BufRead .prettierrc   setfiletype json
autocmd BufNewFile,BufRead .jscsrc       setfiletype json

autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" ----------------------------------------------------------------------------
" Key Mappings: Customized keys
" ----------------------------------------------------------------------------

tnoremap <Esc> <C-\><C-n>
inoremap jj <ESC>

nnoremap <leader>al :AirlineToggle<cr>

command Need Ack! '//\ (TODO\|FIXME\|CHANGED\|BUG\|HACK\|FEATURE\|TEMP)'
command TEMP Ack! '//\ TEMP'
command TODO Ack! '//\ TODO'
command FIXME Ack! '//\ FIXME'
command HACK Ack! '//\ HACK'
command FEATURE Ack! '//\ FEATURE'
command BUG Ack! '//\ BUG'
command CHANGED Ack! '//\ CHANGED'

nmap zuz <Plug>(FastFoldUpdate)

nnoremap <Leader>mm :BookmarkToggle<cr>
nnoremap <Leader>i :BookmarkAnnotate<cr>
nnoremap <Leader>a :BookmarkShowAll<cr>
nnoremap <Leader>j :BookmarkNext<cr>
nnoremap <Leader>k :BookmarkPrev<cr>
nnoremap <Leader>c :BookmarkClear<cr>
nnoremap <Leader>x :BookmarkClearAll<cr>

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

if dein#tap('nuake')
  nnoremap <leader>T :Nuake<cr>
endif

if dein#tap('deoplete.nvim')
  autocmd CompleteDone * pclose
  inoremap <expr><c-l> deoplete#complete_common_string()

  inoremap <silent><expr> <c-e> deoplete#mappings#manual_complete()

  call deoplete#custom#option('ignore_sources', {'typescript': ['member']})

  call deoplete#custom#source('typescript',    'mark', 'T')
  call deoplete#custom#source('omni',          'mark', '⌾')
  call deoplete#custom#source('flow',          'mark', '⌁')
  call deoplete#custom#source('TernJS',        'mark', '⌁')
  call deoplete#custom#source('go',            'mark', '⌁')
  call deoplete#custom#source('jedi',          'mark', '⌁')
  call deoplete#custom#source('vim',           'mark', '⌁')
  call deoplete#custom#source('neosnippet',    'mark', '⌘')
  call deoplete#custom#source('tag',           'mark', '⌦')
  call deoplete#custom#source('around',        'mark', '↻')
  call deoplete#custom#source('buffer',        'mark', 'ℬ')
  call deoplete#custom#source('tmux-complete', 'mark', '⊶')
  call deoplete#custom#source('syntax',        'mark', '♯')
  call deoplete#custom#source('member',        'mark', 'M')

  call deoplete#custom#source('typescript',    'rank', 660)
  call deoplete#custom#source('go',            'rank', 650)
  call deoplete#custom#source('vim',           'rank', 640)
  call deoplete#custom#source('flow',          'rank', 630)
  call deoplete#custom#source('TernJS',        'rank', 620)
  call deoplete#custom#source('jedi',          'rank', 610)
  call deoplete#custom#source('omni',          'rank', 600)
  call deoplete#custom#source('neosnippet',    'rank', 510)
  call deoplete#custom#source('member',        'rank', 500)
  call deoplete#custom#source('file_include',  'rank', 420)
  call deoplete#custom#source('file',          'rank', 410)
  call deoplete#custom#source('tag',           'rank', 400)
  call deoplete#custom#source('around',        'rank', 330)
  call deoplete#custom#source('buffer',        'rank', 320)
  call deoplete#custom#source('dictionary',    'rank', 310)
  call deoplete#custom#source('tmux-complete', 'rank', 300)
  call deoplete#custom#source('syntax',        'rank', 200)
endif

if dein#tap('denite.nvim')
  nnoremap <silent> <space>p  :<C-u>Denite -resume<CR>
  nnoremap <silent> <space>j  :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
  nnoremap <silent> <space>k  :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
  nnoremap <c-p> :Denite -highlight-matched-char=None file_rec<cr>
  nnoremap <silent> <space>w  :<C-u>DeniteCursorWord -mode=normal -auto-resize line<CR>
  nnoremap <silent> <space>l  :<C-u>Denite -mode=normal location_list<CR>
  nnoremap <silent> <space>g  :<C-u>Denite grep<cr>
  nnoremap <silent> <space>u  :<C-u>Denite -mode=normal -highlight-matched-char=None file_mru<cr>
  nnoremap <silent> <space>d  :<C-u>Denite -mode=normal -highlight-matched-char=None directory_mru<cr>
  nnoremap <silent> <space>n  :<C-u>Denite -mode=normal -ignorecase=false -input='TODO\\|FIXME\\|CHANGED\\|BUG\\|HACK\\|FEATURE' grep<cr>
  " nnoremap <silent> <space>t  :<C-u>Denite project<cr>
  nnoremap <silent> <space>s  :<C-u>Denite session<cr>
  " nnoremap <silent> <space>m  :<C-u>Denite -mode=normal menu<cr>
  nnoremap <silent> <space>a  :<C-u>Denite node<CR>
  nnoremap <silent> <space>e  :<C-u>Denite buffer<cr>
  nnoremap <silent> <space>h  :<C-u>Denite history:all<cr>
  nnoremap <silent> <space>q  :<C-u>Denite commands<cr>
  nnoremap <silent> <space>f  :<C-u>Denite file_rec<cr>
  nnoremap <silent> <space>o  :<C-u>Denite -mode=normal -highlight-matched-char=None outline<cr>
  nnoremap <silent> <space>y  :<C-u>Denite -mode=normal -highlight-matched-char=None miniyank<cr>
  nnoremap <silent> <space>m  :<C-u>Denite -mode=normal -highlight-matched-char=None marks<cr>
  nnoremap <silent> <space>/  :Denite grep:. -mode=normal -highlight-matched-char=None<cr>
endif

if dein#tap('nvim-typescript')
  let g:nvim_typescript#type_info_on_hold = 0
  let g:nvim_typescript#javascript_support = 0
  let g:nvim_typescript#vue_support = 0
  let g:nvim_typescript#signature_complete = 0
  let g:nvim_typescript#max_completion_detail = 100
  " let g:nvim_typescript#server_path = $HOME.'erinn/asdf/shims/tsserver'

  nnoremap K :TSDoc<cr>
  nnoremap <c-]> :TSDef<cr>
  nnoremap tdp :TSDefPreview<cr>
  nnoremap ti :TSImport<cr>
  nnoremap tec :TSEditConfig<cr>
  nnoremap trs :TSRefs<cr>
  nnoremap tr :TSRename<cr>
  nnoremap <silent> <space>to  :<C-u>Denite -highlight-mode-insert=Search TSDocumentSymbol<cr>
endif

if dein#tap('Colorizer')
  nnoremap <leader>ct :ColorToggle<cr>
endif

if dein#tap('vim-jsdoc')
  nnoremap <leader>jdd :JsDoc<cr>
endif

" Plugins

" if dein#tap('LanguageClient-neovim')
"   let g:LanguageClient_autoStart = 1
"   let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['javascript-typescript-stdio'],
"     \ 'javascript.jsx': ['javascript-typescript-stdio'],
"     \ 'typescript': ['javascript-typescript-stdio'],
"     \ 'typescript.tsx': ['javascript-typescript-stdio'],
"     \ }
"
"   nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"   nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"   nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
" endif

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

if dein#tap('goyo.vim')
  nnoremap <Leader>G :Goyo<CR>
endif

if dein#tap('vim-quickhl')
  nmap <leader>w <Plug>(quickhl-manual-this)
  xmap <leader>w <Plug>(quickhl-manual-this)
  nmap <leader>W <Plug>(quickhl-manual-reset)
  xmap <leader>W <Plug>(quickhl-manual-reset)
endif

if dein#tap('nvim-miniyank')
  let g:miniyank_maxitems = 100
  let g:miniyank_filename = $HOME."/.config/nvim/.miniyank.mpack"
end

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
    \ 'typescript.tsx': 1
    \}
endif

if dein#tap('open-browser.vim')
  nmap gx <Plug>(openbrowser-smart-search)
	vmap gx <Plug>(openbrowser-smart-search)
endif

if dein#tap('undotree')
  nnoremap <leader>ud :UndotreeToggle<cr>
endif

if dein#tap('tern_for_vim')
  let g:tern#command = ["tern"]
  let g:tern#arguments = ["--persistent"]
	autocmd FileType javascript,jsx,javascript.jsx
		\  nnoremap <silent><buffer> K          :<C-u>TernDoc<CR>
		\| nnoremap <silent><buffer> <C-]>      :<C-u>TernDef<CR>
		\| nnoremap <silent><buffer> <leader>jt  :<C-u>TernType<CR>
		\| nnoremap <silent><buffer> <leader>jrf  :<C-u>TernRefs<CR>
		\| nnoremap <silent><buffer> <leader>jr  :<C-u>TernRename<CR>
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

if dein#tap('jedi-vim')
	let g:jedi#completions_command = ''
	let g:jedi#documentation_command = 'K'
	let g:jedi#goto_command = '<C-]>'
	let g:jedi#goto_assignments_command = '<leader>g'
	let g:jedi#rename_command = '<Leader>r'
	let g:jedi#usages_command = '<Leader>n'
endif

if dein#tap('vim-operator-flashy')
	map y <Plug>(operator-flashy)
	nmap Y <Plug>(operator-flashy)$
endif

if dein#tap('emmet-vim')
  let g:user_emmet_leader_key = '<C-e>'
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
endif

if dein#tap('vim-bbye')
  command! -bang -complete=buffer -nargs=? BD Bdelete<bang> <args>
endif

if dein#tap('vim-esearch')
  let g:esearch = {
    \ 'adapter'    : 'ag',
    \ 'backend'    : 'nvim',
    \ 'out'        : 'win',
    \ 'batch_size' : 1000,
    \ 'use'        : ['visual', 'hlsearch', 'last'],
    \}
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

if dein#tap('delimitMate')
  let delimitMate_matchpairs = '(:),[:],{:}'
  let delimitMate_expand_cr = 1
endif

if dein#tap('vim-better-whitespace')
  let g:better_whitespace_filetypes_blacklist = ['diff', 'gitcommit', 'unite', 'qf', 'help', 'far_vim']
  let g:better_whitespace_filetypes_verbosity = 1
endif

if dein#tap('vim-bookmarks')
  let g:bookmark_sign = '♥'
  let g:bookmark_highlight_lines = 1
  let g:bookmark_no_default_key_mappings = 1
  hi BookMarkLine ctermbg=black ctermfg=none
  hi BookMarkSign ctermbg=none ctermfg=none
endif

if dein#tap('far.vim')
  let g:far#window_width = 70
endif

if dein#tap('neoformat')
  let g:neoformat_javascript_prettier = {
  \ 'exe'   : 'prettier',
  \ 'args'  : ['--stdin'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_typescript_prettier = {
  \ 'exe'   : 'prettier',
  \ 'args'  : ['--stdin', '--parser typescript'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_scss_prettier = {
  \ 'exe'   : 'prettier',
  \ 'args'  : ['--stdin', '--parser css'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_graphql_prettier = {
  \ 'exe'   : 'prettier',
  \ 'args'  : ['--stdin', '--parser graphql'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_json_prettier = {
  \ 'exe'   : 'prettier',
  \ 'args'  : ['--stdin', '--parser json'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_markdown_prettier = {
  \ 'exe'   : 'prettier',
  \ 'args'  : ['--stdin', '--parser markdown'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_html_beautify = {
  \ 'exe'   : 'html-beautify',
  \ 'args'  : ['--indent-size 2'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_pug_beautifier = {
  \ 'exe'   : 'pug-beautifier',
  \ 'args'  : ['-s 2'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_elixir_mix = {
  \ 'exe'   : 'mix',
  \ 'args'  : ['format', '-'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_elm_format = {
  \ 'exe'   : 'elm-format',
  \ 'args'  : ['--stdin'],
  \ 'stdin' : 1
  \ }
  let g:neoformat_go_fmt = {
  \ 'exe'   : 'gofmt',
  \ 'args'  : [],
  \ 'stdin' : 1
  \ }
  let g:neoformat_enabled_javascript = ['prettier']
  let g:neoformat_enabled_typescript = ['prettier']
  let g:neoformat_enabled_scss = ['prettier']
  let g:neoformat_enabled_graphql = ['prettier']
  let g:neoformat_enabled_markdown = ['prettier']
  let g:neoformat_enabled_json = ['prettier', 'jq']
  let g:neoformat_enabled_html = ['beautify']
  let g:neoformat_enabled_pug = ['beautifier']
  let g:neoformat_enabled_elixir = ['mix']
  let g:neoformat_enabled_elm = ['format']
  let g:neoformat_enabled_go = ['fmt']
  nnoremap <silent> <space><space> :Neoformat<cr>
  vnoremap <silent> <space><space> :Neoformat<cr>
endif

if dein#tap('neosnippet')
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
endif

if dein#tap('sideways.vim')
  nnoremap <c-h> :SidewaysLeft<cr>
  nnoremap <c-l> :SidewaysRight<cr>
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

if dein#tap('vim-expand-region')
  xmap v <Plug>(expand_region_expand)
  xmap V <Plug>(expand_region_shrink)
endif

if dein#tap('tcomment_vim')
  nmap <c-_><c-_> :TComment<cr>
  nmap gcc :TComment<cr>
  vmap gc :TComment<cr>
  nmap gca :TCommentAs 
  vmap gca :TCommentAs 
endif

if dein#tap('context_filetype.vim')
  let g:context_filetype#same_filetypes = {
    \ 'typescript': 'typescript,typescript.tsx',
    \ 'typescript.tsx': 'typescript,typescript.tsx',
    \ 'scss': '_',
    \ 'css': '_',
    \ }
endif

if dein#tap('vim-airline')
  if has('statusline')
    set laststatus=2
    " set statusline=%{getcwd()}
    " set statusline+=\ %<%f
    set statusline+=%f
    set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}
    set statusline+=%{(&bomb?\\",BOM\\":\\"\\")}
    set statusline+=\ %{&ff}\ %y
    set statusline+=\ %m%r%w
    if dein#tap('vim-gitbranch')
      set statusline+=%=%{gitbranch#name()}\ 
    endif
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
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#tabline#buffer_nr_show = 1
endif

if dein#tap('ale')
  let g:ale_fixers = {
  \  'javascript': ['eslint'],
  \  'javascript.jsx': ['eslint'],
  \  'typescript': ['tslint', 'tsserver'],
  \  'typescript.tsx': ['tslint', 'tsserver'],
  \}
  let g:ale_linters = {
  \  'javascript': ['eslint'],
  \  'javascript.jsx': ['eslint'],
  \  'typescript': ['tslint', 'tsserver'],
  \  'typescript.tsx': ['tslint', 'tsserver'],
  \}
  let g:ale_linter_aliases = {'jsx': 'javascript', 'tsx': 'typescript'}
  let g:ale_lint_on_save = 0
  let g:ale_lint_on_enter = 0
  let g:ale_lint_on_filetype_changed = 0
  let g:ale_lint_on_text_changed = 'always'
  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = '⚠'
  let g:ale_open_list = 0
  let g:ale_keep_list_window_open = 0
  let g:ale_set_loclist = 0
  let g:ale_set_quickfix = 1
  let g:ale_sign_column_always = 1
  nmap <silent> [ae <Plug>(ale_previous_wrap)
  nmap <silent> ]ae <Plug>(ale_next_wrap)

  let g:ale_echo_msg_error_str = 'E'
  let g:ale_echo_msg_warning_str = 'W'
  let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
  nnoremap <leader>le :ALEEnable<cr>
  nnoremap <leader>ll :ALELint<cr>
  nnoremap <leader>lt :ALEToggle<cr>
  nnoremap <leader>1 :ALEFix<cr>
  function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
  endfunction
endif

if dein#tap('indentLine')
  let g:indentLine_enabled = 0
  nnoremap <leader>i :IndentLinesToggle<cr>
endif

" if dein#tap('vim-wintabs')
"   map <leader>M <Plug>(wintabs_previous)
"   map <leader>m <Plug>(wintabs_next)
"   map qq <Plug>(wintabs_close)
"   map qo <Plug>(wintabs_only)
"   map <leader>c <Plug>(wintabs_close_window)
"   map <leader>qo <Plug>(wintabs_only_window)
"   nnoremap <Leader>b <C-^>
"   command! Tabc WintabsCloseVimtab
"   command! Tabo WintabsOnlyVimtab
" else
nnoremap <Leader>M :bn<cr>
nnoremap <Leader>m :bp<cr>
nnoremap <Leader>b <C-^>
nnoremap qq :bd<cr>

nnoremap <silent> qo :BufOnly<cr>
nnoremap <silent> qoo :BufOnly!<cr>
" endif

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

nnoremap <Leader>; A;<ESC>
nnoremap <Leader>c A,<ESC>
nnoremap <Leader>. A.<ESC>
nnoremap <Leader>\ A \<ESC>
nnoremap <Leader>e :tabnew 
nnoremap <Leader>ee :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>ef :e <C-R>=expand('%')<CR>
nnoremap <Leader>ec :tabnew ~/.config/nvim/init.vim
nnoremap <Leader>p :tabprev<cr>
nnoremap <Leader>n :tabnext<cr>

" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Smart way to move between windows
" noremap <C-j> <C-W>j
" noremap <C-k> <C-W>k
" noremap <C-h> <C-W>h
" noremap <C-l> <C-W>l

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" No Highlight
noremap <silent><leader>// :nohls<cr>

" I can type :help on my own, thanks.
noremap <F1> <esc>

" Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

noremap <leader><leader> :messages<cr>

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

nnoremap <leader>u :<C-u>MiniBrowser <C-r><C-p><CR>
function! s:devdocs(query) abort
    if a:query ==# ''
        let cword = expand('<cword>')
        if cword ==# ''
            MiniBrowser http://devdocs.io/
        else
            execute 'MiniBrowser' 'http://devdocs.io/#q='.escape(cword, ' \')
        endif
        return
    endif

    execute 'MiniBrowser' 'http://devdocs.io/#q='.escape(a:query, ' \')
endfunction
command! -nargs=* DevDocs call <SID>devdocs(<q-args>)

hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

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

" hi Pmenu ctermfg=7 ctermbg=0 guifg=#005f87 guibg=#EEE8D5
" hi Pmenu ctermfg=7 ctermbg=0 guifg=#005f87 guibg=#EEE8D5
" hi PmenuSel ctermfg=0 ctermbg=7 guifg=#AFD700 guibg=#106900
" hi search ctermfg=black
" hi incsearch ctermfg=black

hi LineNr ctermfg=darkgrey guifg=#777777
hi MatchParen ctermfg=black

command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'

if exists("g:gui_oni")
else
  autocmd InsertEnter * call deoplete#enable()
endif
