" ******************************************************************************
" COLORSCHEME
" ******************************************************************************

" the color sheme, dumbass
set background=light
silent! colorscheme solarized

" enable color syntax highlighting
syntax on

" change the background color of the autocomplete menu
highlight Pmenu ctermbg=172 gui=bold

" change the select backgroud color of the autocomplete menu
highlight PmenuSel ctermbg=92 gui=bold

" change the sign column backgroud color
highlight SignColumn ctermbg=black

" ******************************************************************************
" BASICS
"
" Oh, behave...
" ******************************************************************************

" update the file if it's been changed externally
set autoread

" allow backspacing in insert mode
set backspace=indent,eol,start

" allow clipboard access
set clipboard=unnamed

" highlight current line
set cursorline

" current line highlight details
highlight cursorline cterm=none

" highlight current column
set cursorcolumn

" higlight columns past 80
execute "set colorcolumn=" . join(range(81,335), ',')

" allow hidden buffers instead of closing
set hidden

" show the line number
set number

" scroll buffer
set scrolloff=10

" set the sign column to be visible
set signcolumn=yes

"Remove splash screen
set shortmess+=I

" shows selected lines
set showcmd

" jumps to matching brackets
set showmatch

" vim is terrible without this - no beeps
set visualbell

" set the shell - this works for zsh
set shell=sh

" use the legacy regex engine - improves ruby syntax highlighting performance
set regexpengine=1

" ******************************************************************************
" BACKUP FILES
"
" Don't let VIM do this...
" ******************************************************************************

" no swapfiles
set noswapfile

" no backup files
set nobackup

" no backup files for editing
set nowritebackup

" ******************************************************************************
" COMPLETION
" ******************************************************************************

" allows command line completion
set wildmenu

" command line expansion options
set wildmode=list:longest,full

" ignore from completion
set wildignore=*.git,bundle

" ******************************************************************************
" CURSOR
"
" OSX iTerm2 Specific
" ******************************************************************************

" change the cursor shape in edit mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ******************************************************************************
" FONT
" ******************************************************************************

highlight htmlarg cterm=italic
highlight comment cterm=italic

" ******************************************************************************
" SEARCH
" ******************************************************************************

" highlight search matches
set hlsearch

" underline search matches
hi Search cterm=underline

" show matches as you type the search pattern
set incsearch

" ignore case when searching
set ignorecase

" search is case-insensitive if lowercase, case-sensitive otherwise
set smartcase

" set line substiution to global by default
set gdefault

" ******************************************************************************
" STATUS LINE
" ******************************************************************************

" show the status line
set laststatus=2

" ******************************************************************************
" LISTCHARS
" ******************************************************************************

" set list characters
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸▸

" ******************************************************************************
" NUMBERING
" ******************************************************************************
" Turning off for now...
" augroup numbering
"   autocmd!
"   autocmd InsertEnter * set norelativenumber
"   autocmd InsertLeave * set relativenumber
" augroup end

" ******************************************************************************
" TABS
" ******************************************************************************

" use spaces instead of tab
set expandtab

" set width for indentation commands
set shiftwidth=2

" set number of spaces for tab
set softtabstop=2

" ******************************************************************************
" FOLDING
" ******************************************************************************

set nofoldenable

" ******************************************************************************
" PROJECT-SPECIFIC
" ******************************************************************************

" allow per-project configuration files
set exrc

" prevent bad things in project-specific files
set secure

" ******************************************************************************
" Bubble Lines
" ******************************************************************************

" Bubble single lines
nmap <M-Up> ddkP
nmap <M-Down> ddp

" Bubble multiple lines
vmap <M-Up> xkP`[V`]
vmap <M-Down> xp`[V`]
