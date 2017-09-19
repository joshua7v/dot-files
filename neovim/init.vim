" dein
" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | bash ~/.config/nvim

if &compatible
  set nocompatible
endif
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/plugged/')
  call dein#begin('~/.config/nvim/plugged/')

  call dein#add('~/.config/nvim/repos/github.com/Shougo/dein.vim')

  " Color Schemes
  " call dein#add('kamwitsta/nordisk')
  " call dein#add('jdkanani/vim-material-theme')
  call dein#add('mhartington/oceanic-next')
  call dein#add('morhetz/gruvbox')
  call dein#add('joshdick/onedark.vim')

  " Edit
  " call dein#add('gilsondev/searchtasks.vim')
  " call dein#add('chrisbra/NrrwRgn')
  " call dein#add('SirVer/ultisnips')
  " call dein#add('honza/vim-snippets')
  " call dein#add('vim-scripts/TaskList.vim', {
  "       \'on_event': 'VimEnter',
  "       \'hook_add': "let g:tlTokenList = ['FIXME', 'TODO', 'FEATURE', 'CHANGED', 'BUG', 'HACK']"
  "       \})
  " call dein#add('AndrewRadev/linediff.vim', {
  "        \'on_event': 'VimEnter'
  "        \})
  " call dein#add('scrooloose/nerdcommenter', {
  "        \'on_cmd': 'VimEnter',
  "        \'hook_post_source': join([
  "       \"let g:NERDSpaceDelims = 1",
  "       \"let g:NERDDefaultAlign = 'left'",
  "       \"let g:NERDTrimTrailingWhitespace = 1",
  "       \"let g:NERDCompactSexyComs = 1",
  "       \"let g:NERDCustomDelimiters = { 'javascript.jsx': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' } }"
  "        \], "\n")
  "        \})
  call dein#add('terryma/vim-multiple-cursors', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('editorconfig/editorconfig-vim', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('tpope/vim-commentary', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('metakirby5/codi.vim', {
        \'on_cmd': 'Codi'
        \})
  call dein#add('bkad/CamelCaseMotion', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('AndrewRadev/splitjoin.vim', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('mileszs/ack.vim', {
        \'on_cmd': 'Ack',
        \'hook_add': join([
        \"if executable('ag')",
        \"  let g:ackprg = 'ag --vimgrep'",
        \"endif"
        \], "\n"),
        \'hook_post_source': join([
        \"autocmd Syntax * call matchadd('Todo',  '\\W\\zs\\(TODO\\|FIXME\\|CHANGED\\|BUG\\|HACK\\|FEATURE\\)')",
        \], "\n")
        \})
  call dein#add('kopischke/vim-stay', {
        \'hook_add': "set viewoptions=cursor,folds,slash,unix"
        \})
  call dein#add('Konfekt/FastFold', {
        \'on_event': 'VimEnter',
        \'hook_add': join([
        \"let g:fastfold_savehook = 1",
        \"let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']",
        \"let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']",
        \"let g:javascript_folding = 1"
        \], "\n")
        \})
  call dein#add('easymotion/vim-easymotion', {
        \'on_event': 'VimEnter',
        \'hook_add': "let g:EasyMotion_smartcase = 1"
        \})
  call dein#add('tpope/vim-surround', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('tpope/tpope-vim-abolish', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('tpope/vim-repeat', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('terryma/vim-expand-region', {
        \'on_event': 'VimEnter'
        \})
  " call dein#add('jiangmiao/auto-pairs', {
  "       \'on_event': 'InsertEnter'
  "       \})
  call dein#add('Raimondi/delimitMate', {
        \'on_event': 'InsertEnter',
        \'hook_add': join([
        \"let delimitMate_matchpairs = '(:),[:],{:}'",
        \"let delimitMate_expand_cr = 1"
        \], "\n")
        \})
  call dein#add('ntpeters/vim-better-whitespace', {
        \'on_event': 'InsertEnter',
        \'hook_add': join([
        \"let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'far_vim']",
        \"let g:better_whitespace_filetypes_verbosity=1"
        \], "\n")
        \})
  call dein#add('MattesGroeger/vim-bookmarks', {
        \'on_cmd': 'BookmarkToggle',
        \'hook_add': join([
        \"let g:bookmark_sign = '♥'",
        \"let g:bookmark_highlight_lines = 1",
        \"let g:bookmark_no_default_key_mappings = 1",
        \"hi BookMarkLine ctermbg=black ctermfg=none",
        \"hi BookMarkSign ctermbg=none ctermfg=none"
        \], "\n")
        \})
  call dein#add('godlygeek/tabular', {
        \'on_event': 'InsertEnter'
        \})
  call dein#add('ggVGc/vim-fuzzysearch', {
        \'on_cmd': 'FuzzySearch'
        \})
  call dein#add('vim-scripts/BufOnly.vim', {
        \'on_cmd': 'BufOnly'
        \})
  call dein#add('brooth/far.vim', {
        \'on_cmd': [ 'Far', 'Farp', 'F' ],
        \'hook_add': "let g:far#window_width = 70"
        \})
  call dein#add('sbdchd/neoformat', {
        \'on_cmd': 'Neoformat',
        \'hook_add': join([
        \"let g:neoformat_javascript_prettier = {",
        \"\\ 'exe': 'prettier',",
        \"\\ 'args': ['--stdin', '--single-quote'],",
        \"\\ 'stdin': 1",
        \"\\ }"
        \], "\n")
        \})
  call dein#add('tpope/vim-obsession', {
        \'on_cmd': 'Obsession'
        \})
  call dein#add('Shougo/neosnippet-snippets', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('Shougo/neosnippet', {
        \'depends': 'neosnippet-snippets',
        \'on_event': 'InsertCharPre',
        \'on_ft': 'snippet',
        \'hook_add': "let g:neosnippet#snippets_directory = '~/.config/nvim/snippets/**/*.snip'",
        \'hook_source': "
        \let g:neosnippet#enable_snipmate_compatibility = 1\n
        \let g:neosnippet#enable_completed_snippet = 1\n
        \let g:neosnippet#expand_word_boundary = 1
        \"})

  " UI
  " call dein#add('equalsraf/neovim-gui-shim')
  " call dein#add('mhinz/vim-startify')
  " call dein#add('liuchengxu/eleline.vim'),
  call dein#add('guns/xterm-color-table.vim')
  call dein#add('kshenoy/vim-signature')
  call dein#add('powerman/vim-plugin-AnsiEsc', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('google/vim-searchindex', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('inside/vim-search-pulse', {
        \'on_event': 'VimEnter',
        \'hook_post_source': join([
        \"let g:vim_search_pulse_mode = 'pattern'",
        \"let g:vim_search_pulse_duration = 400"
        \], "\n")
        \})
  call dein#add('vim-airline/vim-airline', {
        \'on_cmd': 'AirlineToggle',
        \'hook_add': join([
        \"if has('statusline')",
        \"    set laststatus=2",
        \"    set statusline=%{getcwd()}",
        \"    set statusline+=\\ %<%f",
        \"    set statusline+=\\ %m%r%w",
        \"    set statusline+=%{''.(&fenc!=''?&fenc:&enc).''}",
        \"    set statusline+=%{(&bomb?\\\",BOM\\\":\\\"\\\")}",
        \"    if has('fugitive')",
        \"        set statusline+=%{fugitive#statusline()}",
        \"    endif",
        \"    set statusline+=\\ %{&ff}\\ %y",
        \"    set statusline+=%=%-14.(%l/%L,%c%V%)\\ %p%%",
        \"endif",
        \"let g:airline_powerline_fonts = 1",
        \"let g:airline#extensions#tabline#enabled = 1",
        \"let g:airline#extensions#tabline#formatter = 'unique_tail'",
        \"let g:airline#extensions#tabline#buffer_nr_show = 1"
        \], "\n")
        \})
  call dein#add('Yggdroot/indentLine', {
        \'on_cmd': 'IndentLinesToggle',
        \'hook_add': "let g:indentLine_enabled = 0"
        \})
  call dein#add('junegunn/goyo.vim', {
        \'on_cmd': 'Goyo'
        \})
  call dein#add('junegunn/limelight.vim', {
        \'on_cmd': 'Limelight'
        \})
  call dein#add('itchyny/calendar.vim', {
        \'on_cmd': 'Calendar'
        \})

  " General
  " call dein#add('hecal3/vim-leader-guide')
  " call dein#add('c0r73x/neotags.nvim')
  " call dein#add('neoclide/denite-git')
  " call dein#add('ludovicchabant/vim-gutentags')
  " call dein#add('neoclide/todoapp.vim')
  " call dein#add('zenbro/mirror.vim')
  " call dein#add('kassio/neoterm', {
  "       \'on_event': 'VimEnter',
  "       \'hook_add': join([
  "       \"let g:neoterm_automap_keys = ',tt'",
  "       \"let g:neoterm_position = 'horizontal'",
  "       \"let g:neoterm_autoscroll = 1",
  "       \], "\n")
  "       \})
  call dein#add('Shougo/echodoc.vim', {
        \'on_event': 'InsertEnter'
        \})
  call dein#add('Shougo/deol.nvim', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('zefei/vim-wintabs', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('lambdalisue/gina.vim', {
        \'on_event': 'VimEnter'
        \})
  call dein#add('Shougo/denite.nvim', {
        \'on_cmd': 'Denite',
        \'hook_source': join([
        \"let s:menus = {}",
        \"let s:menus.dein = { 'description': 'Plugin management' }",
        \"let s:menus.dein.command_candidates = [",
        \"\\  ['  Project Tools         │ Key Mapping', ''],",
        \"\\  ['────────────────────────┼──────────────', ''],",
        \"\\  ['-> Dein: Plugins update │', 'call dein#update()'],",
        \"\\  ['-> Dein: Update log     │', 'echo dein#get_updates_log()'],",
        \"\\  ['-> Dein: Log            │', 'echo dein#get_log()'],",
        \"\\  ['-> Denite: Dein Log     │', 'Denite dein -no-quit'],",
        \"\\  ['────────────────────────┴──────────────', '']",
        \"\\ ]",
        \"let s:menus.project = { 'description': 'Project & structure' }",
        \"let s:menus.project.command_candidates = [",
        \"\\  ['  Project Tools  │ Key Mapping', ''],",
        \"\\  ['─────────────────┼──────────────', ''],",
        \"\\  ['-> File Explorer │ ,f',   'NERDTreeToggle'],",
        \"\\  ['-> Outline       │ ,o',   'TagbarToggle'],",
        \"\\  ['-> Bookmarks     │ ,mm',  'BookmarkToggle'],",
        \"\\  ['-> Undo Tree     │ ,ud',  'UndotreeToggle'],",
        \"\\  ['─────────────────┴──────────────', '']",
        \"\\ ]",
        \"let s:menus.files = { 'description': 'File tools' }",
        \"let s:menus.files.command_candidates = [",
        \"\\  ['  File Tools                │ Key Mapping', ''],",
        \"\\  ['────────────────────────────┼──────────────', ''],",
        \"\\  ['-> Denite: Find files       │ c-p',  'Denite file_rec'],",
        \"\\  ['-> Denite: Find in files    │ sp-g',  'Denite grep:.'],",
        \"\\  ['-> Denite: Buffers          │ sp-b',  'Denite buffer'],",
        \"\\  ['-> Denite: Line             │ ',  'Denite line'],",
        \"\\  ['────────────────────────────┴──────────────', '']",
        \"\\]",
        \"let s:menus.tools = { 'description': 'Tools' }",
        \"let s:menus.tools.command_candidates = [",
        \"\\  ['  Tools               │ Key Mapping', ''],",
        \"\\  ['──────────────────────┼──────────────', ''],",
        \"\\  ['-> Check Syntax       │,l', 'ALELint'],",
        \"\\  ['-> Goyo               │', 'Goyo'],",
        \"\\  ['-> List marks         │', 'Denite marks'],",
        \"\\  ['-> Xterm color-table  │', 'XtermColorTable'],",
        \"\\  ['-> Hex editor         │', 'Vinarise'],",
        \"\\  ['-> Tag-bar            │', 'TagbarToggle'],",
        \"\\  ['-> Codi (python)      │', 'Codi python'],",
        \"\\  ['-> Codi (javascript)  │', 'Codi javascript'],",
        \"\\  ['──────────────────────┴──────────────', '']",
        \"\\]",
        \"let s:menus.sessions = { 'description': 'Sessions' }",
        \"let s:menus.sessions.command_candidates = [",
        \"\\  ['  Tools            │ Key Mapping', ''],",
        \"\\  ['───────────────────┼──────────────', ''],",
        \"\\  ['-> Restore session │ sp-s', 'Denite session'],",
        \"\\  ['-> Save session    │', 'Denite session/new'],",
        \"\\  ['───────────────────┴──────────────', '']",
        \"\\]",
        \"call denite#custom#var('menu', 'menus', s:menus)",
        \"call denite#custom#option('default', 'prompt', '❯')",
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
        \"call denite#custom#map('insert','<C-a>','<denite:move_caret_to_head>','noremap')",
        \"call denite#custom#map('insert','<down>','<denite:move_to_next_line>','noremap')",
        \"call denite#custom#map('insert','<up>','<denite:move_to_previous_line>','noremap')",
        \"call denite#custom#map('insert','<C-v>','<denite:do_action:vsplit>','noremap')",
        \"call denite#custom#map('insert','<C-t>','<denite:do_action:tabopen>','noremap')",
        \"call denite#custom#map('insert','<C-d>','<denite:do_action:delete>','noremap')",
        \"call denite#custom#map('insert','<C-b>','<denite:scroll_page_backwards>','noremap')",
        \"call denite#custom#map('insert','<C-f>','<denite:scroll_page_forwards>','noremap')",
        \"call denite#custom#map('insert','<C-p>','<denite:print_messages>','noremap')",
        \"call denite#custom#map('normal','<esc>','<denite:quit>','noremap')",
        \"call denite#custom#map('normal','a','<denite:do_action:add>','noremap')",
        \"call denite#custom#map('normal','d','<denite:do_action:delete>','noremap')",
        \"call denite#custom#map('normal','r','<denite:do_action:reset>','noremap')",
        \"call denite#custom#map('normal','<C-v>','<denite:do_action:vsplit>','noremap')",
        \"call denite#custom#map('normal','e','<denite:do_action:edit>','noremap')",
        \"call denite#custom#map('normal','h','<denite:do_action:help>','noremap')",
        \"call denite#custom#map('normal','u','<denite:do_action:update>','noremap')",
        \"call denite#custom#map('normal','f','<denite:do_action:find>','noremap')",
        \"call denite#custom#map('insert','<esc>','<denite:enter_mode:normal>','noremap')",
        \"call denite#custom#map('insert','<c-h>','<denite:do_action:split>','noremap')",
        \"call denite#custom#map('normal','<c-h>','<denite:do_action:split>','noremap')",
        \"call denite#custom#map('normal','dw','<denite:delete_word_after_caret>','noremap')",
        \"hi link deniteMatchedChar Special"
        \], "\n")
        \})
  call dein#add('w0rp/ale', {
        \'on_event': 'VimEnter',
        \'hook_add': join([
        \"let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['tsserver'] }",
        \"let g:ale_lint_on_save = 0",
        \"let g:ale_sign_error = '✖'",
        \"let g:ale_sign_warning = '⚠'",
        \"let g:ale_lint_on_text_changed = 'never'",
        \"let g:ale_lint_on_enter = 0",
        \"let g:ale_open_list = 1",
        \"let g:ale_keep_list_window_open = 0",
        \], "\n")
        \})
  call dein#add('scrooloose/nerdtree', {
        \'on_cmd': 'NERDTreeToggle',
        \'hook_add': join([
        \"let NERDTreeWinSize=32",
        \"let NERDTreeShowHidden=1",
        \"let NERDTreeMinimalUI=1",
        \"let NERDTreeAutoDeleteBuffer=1",
        \"let NERDTreeHighlightCursorline=1",
        \"let NERDTreeQuitOnOpen=1",
        \"let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]"
        \], "\n")
        \})
  call dein#add('majutsushi/tagbar', {
        \'on_cmd': 'TagbarToggle',
        \'hook_source': join([
        \"if executable('jsctags')",
        \"  let g:tagbar_type_javascript = { 'ctagsbin': 'jsctags' }",
        \"endif"
        \], "\n")
        \})
  call dein#add('Shougo/deoplete.nvim', {
        \'on_event': 'InsertEnter',
        \'hook_add': join([
        \"let g:deoplete#enable_at_startup = 1",
        \"let g:echodoc_enable_at_startup=1",
        \"set splitbelow",
        \"set completeopt+=noselect",
        \], "\n"),
        \'hook_post_source': join([
        \"call deoplete#custom#set('omni',          'mark', '⌾')",
        \"call deoplete#custom#set('ternjs',        'mark', '⌁')",
        \"call deoplete#custom#set('jedi',          'mark', '⌁')",
        \"call deoplete#custom#set('vim',           'mark', '⌁')",
        \"call deoplete#custom#set('neosnippet',    'mark', '⌘')",
        \"call deoplete#custom#set('tag',           'mark', '⌦')",
        \"call deoplete#custom#set('around',        'mark', '↻')",
        \"call deoplete#custom#set('buffer',        'mark', 'ℬ')",
        \"call deoplete#custom#set('tmux-complete', 'mark', '⊶')",
        \"call deoplete#custom#set('syntax',        'mark', '♯')",
        \"call deoplete#custom#set('vim',           'rank', 630)",
        \"call deoplete#custom#set('ternjs',        'rank', 620)",
        \"call deoplete#custom#set('jedi',          'rank', 610)",
        \"call deoplete#custom#set('omni',          'rank', 600)",
        \"call deoplete#custom#set('neosnippet',    'rank', 510)",
        \"call deoplete#custom#set('member',        'rank', 500)",
        \"call deoplete#custom#set('file_include',  'rank', 420)",
        \"call deoplete#custom#set('file',          'rank', 410)",
        \"call deoplete#custom#set('tag',           'rank', 400)",
        \"call deoplete#custom#set('around',        'rank', 330)",
        \"call deoplete#custom#set('buffer',        'rank', 320)",
        \"call deoplete#custom#set('dictionary',    'rank', 310)",
        \"call deoplete#custom#set('tmux-complete', 'rank', 300)",
        \"call deoplete#custom#set('syntax',        'rank', 200)"
        \], "\n")
        \})
  call dein#add('chemzqm/denite-extra', {
        \'on_cmd': 'Denite'
        \})
  call dein#add('chemzqm/unite-location', {
        \'on_source': 'denite.nvim'
        \})
  call dein#add('rafi/vim-denite-session', {
        \'on_source': 'denite.nvim'
        \})
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
        \'on_event': 'InsertEnter'
        \})

  " For html / css
  " call dein#add('gorodinskiy/vim-coloresque')
  call dein#add('hail2u/vim-css3-syntax', {
        \'on_ft': 'css'
        \})
  call dein#add('alvan/vim-closetag', {
        \'on_ft': [ 'html', 'jsx', 'javascript', 'javascript.jsx' ],
        \'hook_add': "
        \let g:closetag_filenames = '*.html,*.xhtml,*.js,*.jsx,*.ts,*.tsx'
        \"})
  call dein#add('mattn/emmet-vim', {
        \'on_ft': [ 'html', 'css', 'jsx', 'javascript', 'javascript.jsx' ],
        \'hook_add': "
        \let g:user_emmet_leader_key='<C-e>'\n
        \let g:user_emmet_mode='a'
        \"})
  call dein#add('chrisbra/Colorizer', { 'on_cmd': 'ColorToggle' })

  " For javascript
  " call dein#add('pangloss/vim-javascript')
  " call dein#add('maxmellon/vim-jsx-pretty', {
  "       \'on_ft': [ 'javascript', 'jsx', 'javascript.jsx' ],
  "       \'hook_post_source':join([
  "       \"let g:vim_jsx_pretty_enable_jsx_highlight = 0",
  "       \"let g:vim_jsx_pretty_colorful_config = 1",
  "       \"hi def link jsxTag Function",
  "       \"hi def link jsxTagName Function",
  "       \"hi def link jsxCloseTag Function",
  "       \"hi def link jsxCloseString Function",
  "       \"hi def link jsxString String",
  "       \"hi def link jsxNameSpace Function",
  "       \"hi def link jsxComment Error",
  "       \"hi def link jsxAttrib Type",
  "       \"hi def link jsxEscapeJs jsxEscapeJs"
  "       \], "\n")
  "       \})
  " call dein#add('mxw/vim-jsx')
  " let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
  call dein#add('moll/vim-node', {
        \'on_ft': [ 'javascript', 'jsx', 'javascript.jsx', 'tsx', 'typescript', 'typescript.tsx' ]
        \})
  call dein#add('carlitux/deoplete-ternjs', {
        \'on_event': 'InsertEnter',
        \'on_ft': [ 'javascript', 'jsx', 'javascript.jsx' ],
        \'hook_add': join([
        \"let g:tern_request_timeout = 1",
        \"let g:tern_show_signature_in_pum = '0'",
        \"let g:tern#filetypes = [ 'js', 'jsx', 'javascript.jsx', 'vue' ]"
        \], "\n")
        \})
  call dein#add('chemzqm/vim-jsx-improve', {
        \'on_ft': [ 'javascript', 'jsx', 'javascript.jsx' ]
        \})
  call dein#add('heavenshell/vim-jsdoc', {
        \'on_ft': [ 'javascript', 'jsx', 'javascript.jsx', 'typescript', 'tsx', 'typescript.tsx' ]
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
        \"let g:elm_format_autosave = 1",
        \"let g:elm_format_fail_silently = 1",
        \"let g:elm_format_two_spaces = 1"
        \], "\n")
        \})

  " For typescript
  call dein#add('mhartington/nvim-typescript', {
        \'on_event': 'InsertEnter',
        \'on_ft': [ 'typescript', 'tsx', 'typescript.tsx' ],
        \'hook_add': "let g:nvim_typescript#type_info_on_hold = 1"
        \})
  call dein#add('leafgarland/typescript-vim', {
        \'on_ft': [ 'typescript', 'tsx', 'typescript.tsx' ]
        \})
  call dein#add('HerringtonDarkholme/yats.vim', {
        \'on_ft': [ 'typescript', 'tsx', 'typescript.tsx' ]
        \})
  call dein#add('ianks/vim-tsx', {
        \'on_ft': [ 'typescript', 'tsx', 'typescript.tsx' ]
        \})

  " For elixir
  call dein#add('elixir-editors/vim-elixir', {
        \'on_ft': 'elixir'
        \})
  call dein#add('slashmili/alchemist.vim', {
        \'on_ft': 'elixir'
        \})

  " For python
  call dein#add('davidhalter/jedi-vim', {
        \'on_ft': 'python',
        \'hook_add': join([
        \"\"let g:python_host_prog = '/usr/local/bin/python'",
        \"\"let g:python2_host_prog = '/usr/local/bin/python2'",
        \"\"let g:python3_host_prog = '/usr/local/bin/python3'"
        \], "\n")
        \})

  " For go
  call dein#add('fatih/vim-go', {
        \'on_event': 'InsertEnter',
        \'on_ft': 'go'
        \})
  call dein#add('nsf/gocode', {
        \'rtp': 'nvim',
        \'on_ft': 'go'
        \})
  call dein#add('zchee/deoplete-go', {
        \'build': 'make',
        \'on_ft': 'go',
        \'hook_add': join([
        \"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']",
        \"let g:deoplete#sources#go#use_cache = 1"
        \], "\n")
        \})

  " For docker
  call dein#add('ekalinin/Dockerfile.vim', {
        \'on_ft': 'Dockerfile'
        \})

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

set background=dark
set t_ut=
set history=200           " history: number of command-lines remembered
set autoread              " auto reload file after being modified
set shortmess=atI         " do not show initial page
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

set number " show line number
set nowrap " disable wrap

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

set relativenumber " show relative line number
set numberwidth=3
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

" let &colorcolumn="80,".join(range(120,999),",")
let &colorcolumn="120"

autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

" ----------------------------------------------------------------------------
" Settings: plugin
" ----------------------------------------------------------------------------

" Theme
colorscheme OceanicNext
set t_Co=256
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

if has('termguicolors')
    set termguicolors
endif

" Close popup menu when leave insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

autocmd FileType python,elm set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType javascript,json,css,scss,html,typescript,typescript.tsx,javascript.jsx,md,ex,exs set tabstop=2 shiftwidth=2 expandtab ai

autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" ----------------------------------------------------------------------------
" Key Mappings: Customized keys
" ----------------------------------------------------------------------------

tnoremap <Esc> <C-\><C-n>
inoremap jj <ESC>

nnoremap <leader>al :AirlineToggle<cr>

command Need Ack! 'TODO\|FIXME\|CHANGED\|BUG\|HACK\|FEATURE'

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

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

nnoremap <leader>i :IndentLinesToggle<cr>

nnoremap <leader>T :Deol 
" nnoremap <silent><leader>T :Ttoggle<cr>
" nnoremap <silent><leader>Tt :Ttoggle<cr>
" nnoremap <silent><leader>Tta :Ttoggle<cr>
" nnoremap <silent><leader>Tc :Tclose<cr>
" nnoremap <silent><leader>Tca :TcloseAll<cr>
" nnoremap <silent><leader>Tv :Tpos vertical<cr>
" nnoremap <silent><leader>Th :Tpos horizontal<cr>
" nnoremap <silent><leader>Tsf :TREPLSendFile<cr>
" nnoremap <silent><leader>Tsl :TREPLSendLine<cr>
" vnoremap <silent><leader>Ts :TREPLSendSelection<cr>
" nnoremap <silent><leader>Tl :call neoterm#clear()<cr>
" nnoremap <silent><leader>Tk :call neoterm#kill()<cr>",command! -nargs=+ Tg :T git <args>

nnoremap <silent> <space>p  :<C-u>Denite -resume<CR>
nnoremap <silent> <space>j  :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
nnoremap <silent> <space>k  :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
nnoremap <c-p> :Denite file_rec<cr>
nnoremap <silent> <space>w  :<C-u>DeniteCursorWord  -auto-resize line<CR>
nnoremap <silent> <space>l  :<C-u>Denite -mode=normal location_list<CR>
nnoremap <silent> <space>g  :<C-u>Denite grep<cr>
nnoremap <silent> <space>n  :<C-u>Denite -mode=normal -ignorecase=false -input='TODO\\|FIXME\\|CHANGED\\|BUG\\|HACK\\|FEATURE' grep<cr>
nnoremap <silent> <space>t  :<C-u>Denite project<cr>
nnoremap <silent> <space>s  :<C-u>Denite session<cr>
nnoremap <silent> <space>m  :<C-u>Denite -mode=normal menu<cr>
nnoremap <silent> <space>a  :<C-u>Denite node<CR>
nnoremap <silent> <space>e  :<C-u>Denite buffer<cr>
nnoremap <silent> <space>h  :<C-u>Denite history:all<cr>
nnoremap <silent> <space>q  :<C-u>Denite commands<cr>
nnoremap <silent> <space>f  :<C-u>Denite file_rec<cr>
nnoremap <silent> <space>o  :<C-u>Denite outline<cr>
nnoremap <silent> <space>/  :Denite grep:. -mode=normal<cr>

nnoremap <leader>l :ALELint<cr>

autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTreeType') && b:NERDTreeType == 'primary') | q | end
nnoremap <leader>f :NERDTreeToggle<cr>

nnoremap <leader>o :TagbarToggle<cr>

autocmd CompleteDone * pclose
inoremap <expr><c-l> deoplete#complete_common_string()

nnoremap <leader>ct :ColorToggle<cr>

nnoremap <leader>jdd :JsDoc<cr>

nnoremap td :TSDoc<cr>
nnoremap tdd :TSDef<cr>
nnoremap th :TSDefPreview<cr>
nnoremap ti :TSImport<cr>
nnoremap tec :TSEditConfig<cr>
nnoremap tre :TSRefs<cr>
nnoremap tt :TSType<cr>
nnoremap ttd :TSTypeDef<cr>
nnoremap tr :TSRename<cr>

" if dein#tap('oceanic-next')
"   hi TabLineFill ctermfg=237 ctermbg=145 guifg=#343d46 guibg=#a7adba
" endif

if dein#tap('goyo.vim')
	nnoremap <Leader>G :Goyo<CR>
endif

if dein#tap('vim-wintabs')
  let g:wintabs_display = 'statusline'
  let g:wintabs_ui_sep_leftmost = ''
  let g:wintabs_ui_sep_rightmost = ''
  let g:wintabs_ui_active_left = '['
  let g:wintabs_ui_active_right = ']'
endif

if dein#tap('undotree')
  nnoremap <leader>ud :UndotreeToggle<cr>
endif

if dein#tap('tern_for_vim')
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

if dein#tap('vim-gitgutter')
	nmap <Leader>hj <Plug>GitGutterNextHunk
	nmap <Leader>hk <Plug>GitGutterPrevHunk
	nmap <Leader>hs <Plug>GitGutterStageHunk
	nmap <Leader>hr <Plug>GitGutterUndoHunk
	nmap <Leader>hp <Plug>GitGutterPreviewHunk
endif

if dein#tap('CamelCaseMotion')
	nmap <silent> e <Plug>CamelCaseMotion_e
	xmap <silent> e <Plug>CamelCaseMotion_e
	omap <silent> e <Plug>CamelCaseMotion_e
	nmap <silent> w <Plug>CamelCaseMotion_w
	xmap <silent> w <Plug>CamelCaseMotion_w
	omap <silent> w <Plug>CamelCaseMotion_w
	nmap <silent> b <Plug>CamelCaseMotion_b
	xmap <silent> b <Plug>CamelCaseMotion_b
	omap <silent> b <Plug>CamelCaseMotion_b
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
nnoremap <Leader>ee :tabnew ~/.config/nvim/init.vim
nnoremap <Leader>p :tabprev<cr>
nnoremap <Leader>n :tabnext<cr>

" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

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

" Select all
noremap <Leader>sa ggVG

" Remap U to <C-r> for easier redo
nnoremap U <C-r>

" Maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

" Move visual block
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

" Replacement
" no confirm not whole word
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<cr>
" no confirm whole word
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<cr>
" confirm not whole word
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<cr>
" confirm whole word
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<cr>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<cr>
" confirm: need confrim
" wholeword: whether whole word
" replace: need to be replaced string
function! Replace(confirm, wholeword, replace)
   wa
   let flag = ''
   if a:confirm
       let flag .= 'gec'
   else
       let flag .= 'ge'
   endif
   let search = ''
   if a:wholeword
       let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
   else
       let search .= expand('<cword>')
   endif
   let replace = escape(a:replace, '/\&~')
   execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

if has('macunix')
  " pbcopy for OSX copy/paste
  " vnoremap <C-x> :!pbcopy<cr>
  " vnoremap <C-c> :w !pbcopy<cr><cr>
endif

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

hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" For error highlight
hi clear SpellBad
hi SpellBad term=standout ctermfg=1 term=underline cterm=underline
hi clear SpellCap
hi SpellCap term=underline cterm=underline
hi clear SpellRare
hi SpellRare term=underline cterm=underline
hi clear SpellLocal
hi SpellLocal term=underline cterm=underline

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