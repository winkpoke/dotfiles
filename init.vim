" Personal settings 
let mapleader = "\<Space>"
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set relativenumber
set smartindent

syntax on
" colorscheme evening

" Permanent undo
set undodir=~/.vimdid
set undofile

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

set backspace=2 " Backspace over newlines
set nofoldenable
set ruler   " Where am I?
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set colorcolumn=81 " and give me a colored column
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Load pathogen.vim
execute pathogen#infect()

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" Fuzzy completion
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Semantic language support
" "Plug 'phildawes/racer'
" "Plug 'racer-rust/vim-racer'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" GUI enhancement
Plug 'w0rp/ale'

" File naviation
Plug 'scrooloose/nerdtree'

" Multiple selection
Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()


" Key mapping
nnoremap ; :
nnoremap <leader><leader> <C-^>

" open NERDTree with Ctrl+n
" map <C-n> :NERDTreeToggle<CR>   " conflict with terryma/vim-multiple-cursors
map <leader>n :NERDTreeToggle<CR>

" FZF
nmap <leader>; :Buffers<CR>
nmap <leader>f :Files<CR>
