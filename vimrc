""""" Nvim fix for terminator:
set guicursor=

set encoding=utf8
set guifont=Monospace\ 16

"""" START Vundle Configuration 
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
" Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'davidhalter/jedi-vim'
" Generic Programming Support 
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'Townk/vim-autoclose'

" Markdown / Writting
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'

" Theme / Interface
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/Spacegray.vim'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
" Show linenumbers
set number

" mouse scroll
:set mouse=a

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode
let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

" Theme and Styling 
syntax on
set t_Co=256

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray
 
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" jedi-vim configuration
let g:jedi#force_py_version = 3

"""""""""""""""""""""""""""""""""""""
">> Mappings configurationn
"""""""""""""""""""""""""""""""""""""
" Leader Mappings
let mapleader = ","

"tabs:
nnoremap <leader>j :tabnext<CR>
nnoremap <leader>k :tabprevious<CR>

" pop tag:
nnoremap <C-[> :pop<CR>


" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>


noremap <C-t> :FZF<CR>

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" FZF config

"" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"Run python script from vim
autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1) <CR>
