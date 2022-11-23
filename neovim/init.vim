call plug#begin(stdpath('data') . '/plugged')

if exists(":PlugInstall")

" colorscheme
Plug 'mhartington/oceanic-next'

" syntax
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Plug 'nvim-treesitter/nvim-treesitter-context'
" Plug 'JoosepAlviste/nvim-ts-context-commentstring'
" Plug 'Shougo/context_filetype.vim'
" Plug 'sheerun/vim-polyglot'

" edit
" Plug 'github/copilot.vim'
Plug 'b0o/incline.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'haya14busa/vim-asterisk'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-indent'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular', { 'on': ['Tabularize'] }
Plug 'ntpeters/vim-better-whitespace', { 'on': ['StripWhitespace'] }
Plug 'justinmk/vim-dirvish'
Plug 'szw/vim-maximizer', { 'on': ['MaximizerToggle'] }
Plug 'haya14busa/vim-edgemotion'
Plug 'rlane/pounce.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'Shougo/vinarise.vim', { 'on': ['Vinarise'] }
Plug 'Valloric/MatchTagAlways', { 'for': ['typescriptreact', 'html'] }
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
Plug 'nvim-lua/plenary.nvim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'jremmen/vim-ripgrep'
Plug 'sindrets/diffview.nvim'

" miscellaneous
Plug 'romainl/vim-qf'
Plug 'kevinhwang91/nvim-bqf'
Plug 'farmergreg/vim-lastplace'
Plug 'pbrisbin/vim-mkdir'
Plug 'tyru/open-browser.vim', { 'on': ['<Plug>(openbrowser-smart-search)'] }
Plug 'skywind3000/vim-terminal-help'
Plug 'guns/xterm-color-table.vim', { 'on': ['XtermColorTable'] }
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'inside/vim-search-pulse'
Plug 'vim-scripts/DrawIt', { 'on': ['DrawIt'] }
Plug 'dstein64/vim-startuptime', { 'on': ['StartupTime'] }
Plug 'yaocccc/nvim-hlchunk'
Plug 'rest-nvim/rest.nvim'
Plug '~/erinn/tools/whitebox/whitebox_v0.96.2/editor_plugins/whitebox-vim'

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
syntax manual
autocmd FileType dirvish,qf setlocal syntax=on

command! SO :setlocal syntax=on
command! SF :setlocal syntax=off

" autocmd BufWinEnter,WinNew,BufEnter * if nvim_win_get_config(0)['relative'] != '' | setlocal syntax=off | endif

let g:mapleader = ','
set nocompatible

set iskeyword+=-
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
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

autocmd BufWinEnter * :set textwidth=0

nnoremap <silent> <c-r> :r !<c-r><c-l><cr>
nnoremap <leader>aa ggVG

if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif

nnoremap <leader>rz :Rg -e "[\u4e00-\u9fa5]+"
nnoremap <leader>ff :AsyncRun -errorformat=\%f fd -a 

set sessionoptions-=blank
set sessionoptions-=buffers

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
  " hi Type ctermfg=221 guifg=#fac863 term=NONE gui=NONE

  hi DiffAdd ctermfg=2 ctermbg=0 guifg=#A3BE8C guibg=#2E3440
  hi DiffChange ctermfg=3 ctermbg=0 guifg=#EBCB8B guibg=#2E3440
  hi DiffDelete ctermfg=1 ctermbg=0 guifg=#BF616A guibg=#2E3440
  hi DiffText ctermfg=4 ctermbg=0 guifg=#81A1C1 guibg=#2E3440

  hi Search ctermfg=0 ctermbg=6 guibg=#88C0D0 guifg=#3B4252
  hi QuickFixLine ctermfg=none ctermbg=none guibg=none gui=none
  hi WinSeparator guibg=none guifg=#777777

  hi! link DiffAdded DiffAdd
  hi! link DiffChanged DiffChange
  hi! link DiffRemoved DiffDelete
  hi! link TermCursor Cursor
  hi! link TargetWord TabLineSel
  hi! link Error StatusLine
  hi! link Folded EndOfBuffer
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
  set laststatus=3
  " set statusline=%{getcwd()}
  " set statusline+=\ %<%f
  " set statusline+=%F
  set statusline+=%{GetBufName()}
  set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}
  set statusline+=%{(&bomb?\\",BOM\\":\\"\\")}
  set statusline+=\ %{&ff}\ %y
  set statusline+=%m%r%w\ 

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

" coc.nvim

" fix node path under scoop/volta installation
if isdirectory($HOME . "/scoop/apps/volta")
  let g:coc_node_path = "~/scoop/apps/volta/current/appdata/bin/node.exe"
endif

let g:coc_global_extensions = [
        \"coc-clangd",
        \"coc-css",
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
        \"coc-zig",
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
" vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
" nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@ 
inoremap <silent><expr> <c-space> coc#refresh()

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
nnoremap <silent> <space>f :<C-u>CocList files<cr>
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
nnoremap <silent> <space>u :<C-u>CocList --normal mru<cr>
nnoremap <silent> <space>a :<C-u>CocList --normal diagnostics<cr>
nnoremap <silent> <space>c :<C-u>CocList commands<cr>
nnoremap <silent> <space>b :<C-u>CocList --normal buffers<cr>
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <space>g :<C-u>CocList -I grep<cr>
" nnoremap <silent> <space>  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>p :<C-u>CocListResume<cr>
nnoremap <silent> <space>m :<C-u>CocList --normal marks<cr>
nnoremap <silent> <space>h :<C-u>CocList --normal searchhistory<cr>
nnoremap <silent> <space>k :<C-u>CocList --normal maps<cr>
nnoremap <silent> <space>q :<C-u>CocList --normal floaterm<cr>
nnoremap <silent> <space>z :<C-u>CocList --normal tasks<cr>
nnoremap <silent> <space>l :<C-u>CocList fuzzy_lines<cr>
nnoremap <silent> <space>w :exe 'CocList -I --normal --input='.expand('<cword>').' words'<cr>
" nnoremap <silent> <space>fl :<c-u>CocList --normal explPresets<cr>
" nnoremap <silent> <space><leader>  :<C-u>CocList --normal project<cr>
" nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>

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
command! -nargs=0 TEMP exe 'Rg -e "TEMP:"'
command! -nargs=0 TODO exe 'Rg -e "TODO:"'
command! -nargs=0 NOTE exe 'Rg -e "NOTE:"'
command! -nargs=0 IMPORTANT exe 'Rg -e "IMPORTANT:"'
inoremap <silent><c-k> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
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
autocmd BufNewFile,BufRead *.vs,*.fs          set ft=glsl
autocmd BufNewFile,BufRead *.tpl              set ft=html
autocmd BufNewFile,BufRead *.mm               set ft=objc
autocmd BufNewFile,BufRead *.shader           set ft=glsl
autocmd BufNewFile,BufRead *.uproject         set ft=json
autocmd BufNewFile,BufRead tsconfig.json      set ft=jsonc
autocmd BufNewFile,BufRead tslint.json        set ft=jsonc
autocmd BufNewFile,BufRead coc-settings.json  set ft=jsonc
autocmd BufNewFile,BufRead settings.json      set ft=jsonc

" autocmd FileType json setlocal conceallevel=0

set errorformat=
set errorformat+=%.%#-->\ %f:%l:%c
set errorformat+=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m
set errorformat+=%f:%l:%c:\ %m
set errorformat+=%f:%l\ %m
set errorformat+=%f\ :\ %m
" set errorformat+=%-G%.%#

" %f(%l) \=: %t%*\D%n: %m,%*[^"]"%f"%*\D%l: %m,%f(%l) \=: %m,%*[^ ] %f %l: %m,%f:%l:%c:%m,%f(%l):%m,%f:%l:%m,%f|%l| %m
" autocmd BufNewFile,BufRead *.ts,*.tsx      set errorformat=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m

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
nmap <c-j> <Plug>(edgemotion-j)
nmap <c-k> <Plug>(edgemotion-k)
vmap <c-j> <Plug>(edgemotion-j)
vmap <c-k> <Plug>(edgemotion-k)

" git-messenger.vim
nmap gm <Plug>(git-messenger)

" vim-visual-multi
let g:VM_Selection_hl       = 'Cursor'
let g:VM_Mono_Cursor_hl     = 'Cursor'
let g:VM_Ins_Mode_hl        = 'Cursor'
let g:VM_Normal_Cursor_hl   = 'Cursor'

let g:VM_maps               = {}
let g:VM_maps['Find Under'] = '<C-h>'

" asyncrun.vim
let g:asyncrun_bell = 1
command! -nargs=0 Rf AsyncRun -program=shebang -mode=term -pos=bottom $(VIM_FILEPATH)

" asynctasks.vim
let g:asynctasks_rtp_config = 'asynctasks/tasks.ini'
let g:asyncrun_open = 24
let g:asynctasks_term_pos = 'bottom'
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg', '.projectionist.json', '.editorconfig', 'compile_commands.json']
let g:asynctasks_term_reuse = 1
let g:asynctasks_term_focus = 1

" noremap <silent><leader>q :call asyncrun#quickfix_toggle(24)<cr>
noremap <leader>r :AsyncTask project-run<cr>
noremap <leader>b :AsyncTask project-build<cr>
command! -nargs=0 Test exe 'AsyncTask project-test'
command! -nargs=0 Clean exe 'AsyncTask project-clean'

" autocmd BufWritePost *.c,*.cpp AsyncTask project-build

" vim-floaterm
if has('macunix')
  let g:floaterm_shell = '/bin/zsh'
else
  let g:floaterm_shell = 'pwsh.exe -NoLogo'
  map <c-z> <nop>
endif

let g:floaterm_keymap_toggle = '<c-q>'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_title = 'Terminal $1/$2'

tnoremap <c-e> <c-\><c-n>:FloatermPrev<cr>
tnoremap <c-r> <c-\><c-n>:FloatermNext<cr>
tnoremap <m-t> <c-\><c-n>:FloatermNew<cr>
nnoremap <m-t> :FloatermNew<cr>
nnoremap <m-s> :FloatermNew vifm %:p:h<cr>
nnoremap <m-g> :FloatermNew gitui<cr>

command! TermNew FloatermNew
command! Vifm :FloatermNew vifm %:p:h .
command! Gitui :FloatermNew gitui

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

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <silent> <leader>q :call ToggleQuickFix()<cr>

" vim-bqf
lua <<EOF
require('bqf').setup({
    auto_resize_height = false,
    func_map = {
        openc = '<cr>',
        open = 'o',
    },
    preview = {
      delay_syntax = -1,
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
    nnoremap <silent> <leader>a <Cmd>lua _G.diagnostic()<CR>
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
command! R :Rg <cword> %

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

" ------------
" key bindings
" ------------
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>ec :tabnew $MYVIMRC
nnoremap <leader>. <C-^>
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

" nvim-treesitter
" --------------------------------------------------------------------
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = false,
    disable = function(lang, bufnr)
        if lang == "c" then
          return true
        end
        offset = vim.api.nvim_buf_get_offset(bufnr, 1)
        return offset > 777
    end,
  },
  indent = {
    enable = true,
    disable = {},
  },
  incremental_selection = {
    enable = true,
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
    "http",
    "jsdoc",
    "json",
    "jsonc",
    "javascript",
    "lua",
    "prisma",
    "python",
    "rust",
    "scss",
    -- "swift",
    "svelte",
    "toml",
    "typescript",
    "tsx",
    "vim",
    "vue",
    "yaml",
    "zig",
  },
}

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.tsx.filetype_to_parsername = { "javascript", "typescriptreact" }
local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.typescriptreact = "tsx"
EOF

" nvim-treesitter-textobjects
" if s:is_installed('nvim-treesitter-textobjects')
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   textobjects = {
"     select = {
"       enable = true,
"       lookahead = true,
"       keymaps = {
"         -- ["ap"] = "@parameter.outer",
"         -- ["ip"] = "@parameter.inner",
"       },
"     },
"   },
" }
" EOF
" endif

" nvim-autopairs
if s:is_installed('nvim-autopairs')
lua <<EOF
local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')

npairs.setup({
    disable_filetype = { "wast", "racket" },
    check_ts = true,
    ts_config = {
        lua = {'string'},
    },
    fast_wrap = {
      map = '<M-q>',
      chars = { '{', '[', '(', '"', "'", "`" },
      end_key = '$',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
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

" Comment.nvim
lua require('Comment').setup()

" todo-comments.nvim
" if s:is_installed('todo-comments.nvim')
" lua <<EOF
" require("todo-comments").setup {
"   signs = false,
"   -- keywords recognized as todo comments
"   keywords = {
"     FIX = {
"       icon = "", -- icon used for the sign, and in search results
"       color = "error", -- can be a hex color, or a named color (see below)
"       alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
"       -- signs = false, -- configure signs for some keywords individually
"     },
"     TODO = { icon = "", color = "#fd8489" },
"     HACK = { icon = "", color = "warning" },
"     WARN = { icon = "", color = "warning", alt = { "WARNING", "XXX" } },
"     PERF = { icon = "", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
"     NOTE = { icon = "", color = "hint", alt = { "INFO" } },
"     TEMP = { icon = "", color = "error" },
"     IMPORTANT = { icon = "", color = "#FBBF24" },
"   },
"   merge_keywords = false, -- when true, custom keywords will be merged with the defaults
"   -- highlighting of the line containing the todo comment
"   -- * before: highlights before the keyword (typically comment characters)
"   -- * keyword: highlights of the keyword
"   -- * after: highlights after the keyword (todo text)
"   highlight = {
"     before = "", -- "fg" or "bg" or empty
"     keyword = "bg", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
"     after = "", -- "fg" or "bg" or empty
"     pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
"     comments_only = true, -- uses treesitter to match keywords in comments only
"     max_line_len = 400, -- ignore lines longer than this
"     exclude = {}, -- list of file types to exclude highlighting
"   },
"   -- list of named colors where we try to extract the guifg from the
"   -- list of hilight groups or use the hex color if hl not found as a fallback
"   colors = {
"     error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
"     warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
"     info = { "DiagnosticInfo", "#2563EB" },
"     hint = { "DiagnosticHint", "#10B981" },
"     default = { "Identifier", "#7C3AED" },
"   },
"   search = {
"     command = "rg",
"     args = {
"       "--color=never",
"       "--no-heading",
"       "--with-filename",
"       "--line-number",
"       "--column",
"     },
"     -- regex that will be used to match keywords.
"     -- don't replace the (KEYWORDS) placeholder
"     pattern = [[\b(KEYWORDS):]], -- ripgrep regex
"     -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
"   },
" }
" EOF
" endif

" incline.nvim
if s:is_installed('incline.nvim')
lua <<EOF
require('incline').setup({
  hide = {
    cursorline = true,
    focused_win = false,
    only_win = true
  },
  render = function(props)
    local bufname = vim.api.nvim_buf_get_name(props.buf)
    local res = bufname ~= '' and vim.fn.fnamemodify(bufname, ':t') or '[no name]'
    if string.find(vim.fn.fnamemodify(bufname, ":t"), "index") then
      res = vim.fn.fnamemodify(bufname, ":.")
    end
    if vim.api.nvim_buf_get_option(props.buf, 'modified') then
      res = res .. ' [+]'
    end
    return res
  end,
})
EOF
endif

" rest.nvim
if s:is_installed('rest.nvim')
lua <<EOF
require("rest-nvim").setup({
  result = {
    formatters = {
      json = function(body)
        return vim.fn.system({"prettier", "--stdin-filepath", "a.json"}, body)
      end,
      html = function(body)
        return vim.fn.system({"prettier", "--stdin-filepath", "a.html"}, body)
      end
    },
  },
})
EOF
endif

command! -nargs=0 RestRun :lua require("rest-nvim").run()
command! -nargs=0 RestLast :lua require("rest-nvim").last()
command! -nargs=0 RestPreview :lua require("rest-nvim").run(true)

fun s:mapMake()
  nnoremap <silent><c-\> :AsyncRun -save=1 make<cr>;
  nnoremap <silent><m-\> :AsyncRun -save=1 -raw make<cr>;
  command! MakeRaw AsyncRun -save=1 -raw make
  
  if &ft == "http"
    nnoremap <silent><c-\> :RestRun<cr>
  endif

  if &ft == "rust"
    nnoremap <c-\> :AsyncRun -save=1 cargo check<cr>;
  endif
endfun

autocmd WinEnter,BufEnter * call s:mapMake()

" ------------
" gui settings
" ------------

let g:neovide_fullscreen=v:false
set guifont=Sarasa\ Mono\ SC:h12
set guicursor=n-v-c:block-Cursor,i-ci-ve:ver30-Cursor

hi Cursor guifg=white guibg=#ff5555

if exists('g:nvui')
  autocmd InsertEnter * NvuiIMEEnable
  autocmd InsertLeave * NvuiIMEDisable
endif
