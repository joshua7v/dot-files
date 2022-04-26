call plug#begin(stdpath('data') . '/plugged')

if exists(":PlugInstall")

" colorscheme
Plug 'mhartington/oceanic-next'

" syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'

" edit
Plug 'github/copilot.vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
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
Plug 'szw/vim-maximizer', { 'on': ['MaximizerToggle'] }
Plug 'haya14busa/vim-edgemotion'
Plug 'justinmk/vim-sneak'
Plug 'Shougo/context_filetype.vim'
" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'haringsrob/nvim_context_vt'
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
Plug 'tenfyzhong/vim-gencode-cpp', { 'for': ['c', 'cpp'] }
Plug 'anuvyklack/pretty-fold.nvim'

" project
Plug 'puremourning/vimspector'
Plug 'rhysd/devdocs.vim', { 'on': ['DevDocsAllUnderCursor'] }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'voldikss/vim-floaterm'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fugitive'
Plug 'kkoomen/vim-doge', { 'on': ['DogeGenerate'] }
Plug 'rhysd/git-messenger.vim'
Plug 'Shougo/echodoc.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'mtth/scratch.vim'
Plug 'MattesGroeger/vim-bookmarks'

" miscellaneous
Plug 'romainl/vim-qf'
Plug 'yssl/QFEnter'
Plug 'vim-scripts/BufOnly.vim', { 'on': ['BufOnly'] }
Plug 'farmergreg/vim-lastplace'
Plug 'pbrisbin/vim-mkdir'
Plug 'tyru/open-browser.vim', { 'on': ['<Plug>(openbrowser-smart-search)'] }
Plug 'skywind3000/vim-terminal-help'
Plug 'guns/xterm-color-table.vim', { 'on': ['XtermColorTable'] }
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'inside/vim-search-pulse'
Plug 'vim-scripts/DrawIt', { 'on': ['DrawIt'] }
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'dstein64/vim-startuptime', { 'on': ['StartupTime'] }

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

set shortmess+=c
set tabline=
set guitablabel=%t

set nowrap " disable wrap
set number " show line number
set relativenumber " show relative line number
set numberwidth=3
" set re=1
autocmd InsertEnter * :set number " no relativenumber in insert mode
autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

set omnifunc=syntaxcomplete#Complete
set signcolumn=yes
set splitbelow
set laststatus=3

set textwidth=0

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
autocmd BufWinEnter * :set textwidth=0

" custom keyword highlighting
" hi TodoGroup cterm=bold ctermfg=233 ctermbg=210 gui=bold guifg=#132132 guibg=#fd8489
" hi NoteGroup ctermfg=210 ctermbg=235 guifg=#fd8489 guibg=#3a4b5c
" hi ImportantGroup ctermfg=233 ctermbg=222 guifg=#132132 guibg=#fedf81
" call matchadd("TodoGroup", 'TODO')
" call matchadd("NoteGroup", 'NOTE')
" call matchadd("ImportantGroup", 'IMPORTANT')

" augroup vimrc_todo
"   au!
"   au Syntax * syn match sTodo /TODO/ containedin=.*Comment,vimCommentTitle
"   au Syntax * syn match sNote /NOTE/ containedin=.*Comment,vimCommentTitle
"   au Syntax * syn match sImportant /IMPORTANT/ containedin=.*Comment,vimCommentTitle
" augroup END

hi def link sTodo TodoGroup
hi def link sNote NoteGroup
hi def link sImportant ImportantGroup

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
  hi QuickFixLine ctermfg=0 ctermbg=6 guibg=#343d46 guifg=none gui=none
  hi! link Folded EndOfBuffer
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

" vimspector
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_sign_priority = {
  \    'vimspectorBP':         30,
  \    'vimspectorBPCond':     20,
  \    'vimspectorBPLog':      20,
  \    'vimspectorBPDisabled': 10,
  \ }

nnoremap <leader>cs :call vimspector#Launch()<cr>
nnoremap <leader>cx :call vimspector#Reset()<cr>
nmap <leader>cc <Plug>VimspectorRunToCursor
nmap <leader>ci <Plug>VimspectorStepInto
nmap <leader>co <Plug>VimspectorStepOut
nmap <leader>ch <Plug>VimspectorStepOver
nmap <leader>cr <Plug>VimspectorRestart
nmap <leader>cb <Plug>VimspectorToggleBreakpoint
nmap <leader>cg <Plug>VimspectorContinue
nmap <m-j> <Plug>VimspectorStepOver

" coc.nvim

" fix node path under scoop/volta installation
if isdirectory($HOME . "/scoop/apps/volta")
  let g:coc_node_path = "~/scoop/apps/volta/current/appdata/bin/node.exe"
endif

let g:coc_global_extensions = [
        \"coc-marketplace",
        \"coc-word",
        \"coc-git",
        \"coc-gitignore",
        \"coc-snippets",
        \"coc-tsserver",
        \"coc-json",
        \"coc-html",
        \"coc-css",
        \"coc-prettier",
        \"coc-webpack",
        \"coc-lists",
        \"coc-clangd",
        \"coc-yaml",
        \"coc-pyright",
        \"coc-svg",
        \"coc-tasks",
        \"coc-highlight",
        \"coc-rust-analyzer",
        \"coc-lua",
        \"coc-elixir",
        \"coc-go",
        \"coc-toml",
        \]

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
let g:coc_auto_copen = 0

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
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

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocActionAsync('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  nmap <space><space> :Format<cr>
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

inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<tab>"
nmap <leader>ee <Plug>(coc-diagnostic-info)
nmap <leader>cl <Plug>(coc-codelens-action)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>gh :CocCommand git.chunkInfo<cr>
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" vmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>ac <Plug>(coc-codeaction-cursor)
xmap <leader>ac <Plug>(coc-codeaction-selected)
nmap <silent>K :call <SID>show_documentation()<cr>
nmap <silent>gd :call <SID>GoToDefinition()<cr>
" nmap <silent> gd <Plug>(coc-definition)
vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@ 
inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <silent> <space>f  :<C-u>CocList files<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>u  :<C-u>CocList --normal mru<cr>
nnoremap <silent> <space>a  :<C-u>CocList --normal diagnostics<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>b  :<C-u>CocList --normal buffers<cr>
nnoremap <silent> <space>y  :<C-u>CocList --normal yank<cr>
nnoremap <silent> <space>g  :<C-u>CocList -I grep<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>p  :<C-u>CocListResume<cr>
nnoremap <silent> <space>m  :<C-u>CocList --normal marks<cr>
nnoremap <silent> <space>h  :<C-u>CocList --normal searchhistory<cr>
nnoremap <silent> <space>k  :<C-u>CocList --normal maps<cr>
nnoremap <silent> <space>q  :<C-u>CocList --normal floaterm<cr>
nnoremap <silent> <space>z  :<C-u>CocList --normal tasks<cr>
nnoremap <silent> <space>l  :<C-u>CocList -I lines<cr>
nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<cr>
" nnoremap <silent> <space>fl :<c-u>CocList --normal explPresets<cr>
nnoremap <silent> <space><leader>  :<C-u>CocList --normal project<cr>
" nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>

command! -nargs=0 ColorPresentation :call CocActionAsync('colorPresentation')
command! -nargs=0 PickColor :call CocActionAsync('pickColor')
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=? Fold :call CocActionAsync('fold', <f-args>)
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
command! -nargs=+ -complete=custom,s:GrepArgs Rgl exe 'CocList grep '.<q-args>
command! -nargs=0 Rg exe 'CocList -I grep'
command! -nargs=0 TODO exe 'CocList --normal grep //\ TODO'
command! -nargs=0 NOTE exe 'CocList --normal grep //\ NOTE'
command! -nargs=0 IMPORTANT exe 'CocList --normal grep //\ IMPORTANT'

inoremap <C-P> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

hi def link CocFadeOut NonText

" editorconfig-vim
if s:is_installed('editorconfig-vim')
" respect .editorconfig
else
  let &colorcolumn="121"

  autocmd FileType python,elm,go,c,cpp,h set tabstop=4 shiftwidth=4 expandtab ai
  autocmd FileType vim,javascript,javascript.jsx,typescript,typescript.tsx,json,css,scss,html,yaml,md,ex set tabstop=2 shiftwidth=2 expandtab ai
endif

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
autocmd BufNewFile,BufRead *.vs,*.fs          set ft=glsl
autocmd BufNewFile,BufRead *.tpl              set ft=html
autocmd BufNewFile,BufRead *.mm               set ft=objc
autocmd BufNewFile,BufRead *.shader           set ft=glsl
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
nmap <c-j> <Plug>(edgemotion-j)
nmap <c-k> <Plug>(edgemotion-k)
vmap <c-j> <Plug>(edgemotion-j)
vmap <c-k> <Plug>(edgemotion-k)

" git-messenger.vim
nmap gm <Plug>(git-messenger)

" vim-yoink
let g:yoinkSavePersistently = 1

nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

nmap <expr> <c-p> yoink#canSwap() ? '<plug>(YoinkPostPasteSwapForward)' : ''
nmap <expr> <c-n> yoink#canSwap() ? '<plug>(YoinkPostPasteSwapBack)' : ''

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
" autocmd FileType c,cpp,cmake noremap <leader>m :AsyncRun -mode=term -pos=bottom cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=YES -B build .<cr>
" autocmd FileType c,cpp,cmake noremap <leader>c :AsyncRun -mode=term -pos=bottom -cwd=build make<cr>
" autocmd FileType c,cpp,cmake noremap <leader>cc :AsyncRun -mode=term -pos=bottom make -cwd=build make clean<cr>

" augroup vimrc
" autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(50, 1)
" augroup END
command! -nargs=0 Rf AsyncRun -program=shebang -mode=term -pos=bottom $(VIM_FILEPATH)

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

" vim-floaterm
if has('macunix')
  let g:floaterm_shell = '/bin/zsh'
else
  let g:floaterm_shell = 'powershell.exe'
  map <c-z> <nop>
endif

let g:floaterm_keymap_toggle = '<c-q>'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

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

" vim-qf
let g:qf_max_height = 24
let g:qf_auto_resize = 0
" nmap <leader>q <Plug>(qf_qf_toggle_stay)

" open-browser.vim
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" vim-terminal-help
let g:terminal_key = '<leader>t'
let g:terminal_kill = 'term'
let g:terminal_cwd = 2
let g:terminal_list = 0
let g:terminal_height = 20
let g:terminal_pos = 'below'
let g:terminal_edit = 'drop'
let g:terminal_fixheight = 1

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

" scratch.vim
let g:scratch_persistence_file = stdpath('data') . '/scratch'
let g:scratch_top = 0
let g:scratch_insert_autohide = 0
let g:scratch_horizontal = 0
let g:scratch_no_mappings = 1
let g:scratch_height = 80

nmap gs :Scratch<cr>
nmap gp :ScratchPreview<cr>
xmap gs <plug>(scratch-selection-reuse)
" nmap gS <plug>(scratch-insert-clear)
" xmap gS <plug>(scratch-selection-clear)

" splitjoin.vim
" let g:splitjoin_join_mapping = ''
" let g:splitjoin_split_mapping = ''
" nmap gJ :SplitjoinJoin<CR>
" nmap gS :SplitjoinSplit<CR>

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
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
" hi BookMarkLine ctermbg=none ctermfg=none
" hi BookMarkSign ctermbg=none ctermfg=none

" vim-gencode-cpp
noremap <leader>` :GenDefinition<cr>

" tcomment_vim
" nmap <c-_><c-_> :TComment<cr>
" nmap gcc :TComment<cr>
" vmap gc :TComment<cr>
" nmap gca :TCommentAs 
" vmap gca :TCommentAs 
" let g:tcomment#filetype#guess = 1
" let g:tcomment#filetype#guess_typescriptreact = 1

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
" nnoremap <leader>e :tabnew 
" nnoremap <leader>ee :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>ef :e <C-R>=expand('%')<CR>

" nnoremap <leader><leader> <C-^>
nnoremap qq :bd<cr>

command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'
command! GCompileCommands execute '!xmake project -k compile_commands'

" nvim-treesitter
" --------------------------------------------------------------------
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  context_commentstring = {
    enable = true
  },
  ensure_installed = {
    "bash",
    "c",
    "comment",
    "cpp",
    "css",
    "dockerfile",
    "elixir",
    "heex",
    "java",
    "markdown",
    "gdscript",
    "glsl",
    "go",
    "graphql",
    "html",
    "jsdoc",
    "json",
    "jsonc",
    "javascript",
    "lua",
    "python",
    "rust",
    "scss",
    "swift",
    "svelte",
    "toml",
    "typescript",
    "tsx",
    "vue",
    "yaml",
  },
}

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.tsx.filetype_to_parsername = { "javascript", "typescriptreact" }
local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.typescriptreact = "tsx"
EOF
set foldmethod=manual
set foldexpr=nvim_treesitter#foldexpr()

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
" autocmd BufEnter * normal zR

" nvim_context_vt
lua <<EOF
require('nvim_context_vt').setup {
  enabled = false,
}
EOF
nnoremap <leader>u :NvimContextVtToggle<cr>

" nvim-autopairs
lua <<EOF
require('nvim-autopairs').setup{}
EOF

" todo-comments.nvim
lua <<EOF
require("todo-comments").setup {
  signs = false,
  -- keywords recognized as todo comments
  keywords = {
    FIX = {
      icon = "", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = "", color = "#fd8489" },
    HACK = { icon = "", color = "warning" },
    WARN = { icon = "", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = "", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = "", color = "hint", alt = { "INFO" } },
  },
  merge_keywords = false, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)
  highlight = {
    before = "", -- "fg" or "bg" or empty
    keyword = "bg", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
    after = "", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of hilight groups or use the hex color if hl not found as a fallback
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
}
EOF

" pretty-fold.nvim
lua <<EOF
require('pretty-fold').setup {}
require('pretty-fold.preview').setup {}
EOF

" ------------
" gui settings
" ------------

let g:neovide_fullscreen=v:true
set guifont=Sarasa\ Mono\ SC\ Nerd:h12
highlight Cursor guifg=white guibg=#ff5555
set guicursor=n-v-c:block-Cursor,i-ci-ve:ver30-Cursor
