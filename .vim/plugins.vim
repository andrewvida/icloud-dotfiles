" ******************************************************************************
" VIM-PLUG
" ******************************************************************************
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'csexton/trailertrash.vim'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'majutsushi/tagbar'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'ntpeters/vim-airline-colornum'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
call plug#end()

" ******************************************************************************
" RAINBOW_PARENTHESES
" ******************************************************************************

" activate immediately
autocmd VimEnter * silent! RainbowParentheses

" add the [] and {}
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" ******************************************************************************
" SYNTASTIC
" ******************************************************************************

" set to check files when opened
let g:syntastic_check_on_open = 1

" set syntastic symbols
let g:syntastic_error_symbol = '⛔'
let g:syntastic_style_error_symbol = '⚠️ '
let g:syntastic_style_warning_symbol='😱'
let g:syntastic_warning_symbol = '🚧'

" Update the background for the symbols
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
highlight clear SignColumn
highlight SignColumn guibg=black ctermbg=black

" set syntastic to always populate the loclist
let g:syntastic_always_populate_loc_list = 1

" close the loclist automatically
let g:syntastic_auto_loc_list = 2

" toggle the mode
nnoremap <silent> <leader>s :SyntasticToggleMode<CR>

" turn the elixir checker on
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_enable_elixir_checker = 1

" ******************************************************************************
" TAGBAR
" ******************************************************************************

" toggle tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

" hide line numbers
let g:tagbar_show_linenumbers = 0

" ******************************************************************************
" TABULAR
" ******************************************************************************
function! CustomTabularPatterns()
  if exists('g:tabular_loaded')
    AddTabularPattern! symbols         / :/l0
    AddTabularPattern! hash            /^[^>]*\zs=>/
    AddTabularPattern! chunks          / \S\+/l0
    AddTabularPattern! assignment      / = /l0
    AddTabularPattern! comma           /^[^,]*,/l1
    AddTabularPattern! colon           /:\zs /l0
    AddTabularPattern! options_hashes  /:\w\+ =>/
  endif
endfunction

autocmd VimEnter * call CustomTabularPatterns()

" ******************************************************************************
" TRAILERTRASH
" ******************************************************************************

" Maps to more succient command
:command! Trim TrailerTrim

" ******************************************************************************
" ULTISNIPS
" ******************************************************************************

" trigger mappings
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsListSnippets        = "<c-l>"

" ******************************************************************************
" VIM-AIRLINE
" ******************************************************************************

" add fancy glyphs -- requires a powerline font
let g:airline_powerline_fonts = 1

" set the airline theme
let g:airline_theme = 'light'

" ******************************************************************************
" VIM-COFFEE-SCRIPT
" ******************************************************************************

" compile CoffeeScript in a new buffer
vnoremap <silent> <localleader>c :CoffeeCompile<CR>

" ******************************************************************************
" VIM-GITGUTTER
" ******************************************************************************

" toggle the git gutter
nnoremap <silent> <leader>g :GitGutterToggle<CR>

" toggle the git gutter highlights
nnoremap <silent> <leader>h :GitGutterLineHighlightsToggle<CR>

" gitgutter symbols
let g:gitgutter_sign_added = '🔹'
let g:gitgutter_sign_modified = '🔸'
let g:gitgutter_sign_removed = '🔺'
let g:gitgutter_sign_modified_removed = '💥'

" ******************************************************************************
" VIM-FUGITIVE
" ******************************************************************************

augroup fugitive_quickfix
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup end

" ******************************************************************************
" VIM-TEST
" ******************************************************************************

nnoremap <leader>n :wa<cr> :TestNearest<CR>
nnoremap <leader>f :wa<cr> :TestFile<CR>
nnoremap <leader>a :wa<cr> :TestSuite<CR>
nnoremap <leader>l :wa<cr> :TestLast<CR>

" ******************************************************************************
" YOUCOMPLETEME
" ******************************************************************************

" add language keywords
let g:ycm_seed_identifiers_with_syntax = 1

" add tag files integration
let g:ycm_collect_identifiers_from_tags_files = 1

" ******************************************************************************
" FZF
" ******************************************************************************
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
