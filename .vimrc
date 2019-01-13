"Setup {{{
set nocompatible
filetype on
"Pathogen settings
execute pathogen#infect()

filetype plugin indent on

set t_Co=256
syntax on

" map leader key to comma
let mapleader = " "

"slate, darkZ, default, desert, elflord, koehler, molokai
" dobre:
" tomorow-night, Monokai, candyman, mustang
" colorscheme candyman
" colorscheme dobar
" colorscheme desert

set number	 "Show line numbers
set linebreak	 "Break lines at word (requires Wrap lines)
"set showbreak=+++ "	# Wrap-broken line prefix
set textwidth=1000 "	# Line wrap (number of cols)
set showmatch	" Highlight matching brace
 
set hlsearch	 "Highlight all search results
set ignorecase	 "Always case-insensitive
set smartcase	 "Enable smart-case search
set incsearch	 "Searches for strings incrementally
 
set autoindent	 "Auto-indent new lines
set expandtab	 "Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	 "Enable smart-indent
set smarttab	 "Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set foldmethod=marker "Fold at marker
set visualbell  "turn off that anoyng bell
set fileencoding=utf8  "set file encodig to utf8
set bomb "utf files begin with byte order mark
 
"Advanced

set undolevels=1000	"Number of undo levels
set backspace=indent,eol,start	 "Backspace behaviour

"Indentation
vnoremap < <gv 
vnoremap > >gv
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"source ~/.vim/mappings.vim
" }}}

"Mapping {{{ 
"arrow keys
"Move line down
no <down> ddp 
no <left> <Nop>
"Move line up
no <up> ddkP 
no <right> <Nop>

" Markdown map
nmap <leader>m :InstantMarkdownPreview<cr>

"open file tree with leader n
map <silent> <leader>n :NERDTreeToggle<cr>

" Move between splits w/ C-hjkl
nmap <silent> <c-h> <c-w>h
nmap <silent> <c-j> <c-w>j
nmap <silent> <c-k> <c-w>k
nmap <silent> <c-l> <c-w>l

" Open and close tabs
map <silent> <leader>tn :tabe<CR>
map <silent> <leader>tw :tabclose<CR>

" Split view horizontally and vertically
map <silent> <leader>vs :vsplit<cr>
map <silent> <leader>hs :split<cr>

" }}}

"Python-mode {{{
" Activate rope
" keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
let g:pymode_rope_completion = 1

" Documentation
"let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 80
"Linting
let g:pymode_lint = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore = "E501"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Completion
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
" }}}

" Airline {{{
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts=0
let g:airline_theme='base16_default'
set laststatus=2
" }}}

" Indentline {{{
let g:indentLine_color_term = 239
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['text']
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled = 1
" }}}

" vim-instant-markdown {{{
" call with ':InstantMarkdownPreview'
let g:instant_markdown_autostart = 0
" }}}

" Auto Pairs {{{
let g:AutoPairsFlyMode=0
" }}}

"vim-markdown{{{
let g:vim_markdown_math = 1
let g:vim_markdown_conceal = 0
set foldenable

"}}}

" Rubocop {{{
let g:syntastic_check_on_open = 1
" Use rubocop w/ syntastic
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_args = "-D"
"}}}
