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

" Rust
" "Plug 'phildawes/racer'
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'

" Completion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-vim'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'ncm2/ncm2-racer'

" GUI enhancement
Plug 'w0rp/ale'

" File naviation
Plug 'scrooloose/nerdtree'

" Multiple selection
Plug 'terryma/vim-multiple-cursors'

" Clojure related
Plug 'tpope/vim-fireplace'
Plug 'vim-scripts/paredit.vim'

" HTML editing
Plug 'mattn/emmet-vim'

" javascript
Plug 'pangloss/vim-javascript'

" git related
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()


" Key mapping
nnoremap ; :
nnoremap <leader><leader> <C-^>

" open NERDTree with Ctrl+n
" map <C-n> :NERDTreeToggle<CR>   " conflict with terryma/vim-multiple-cursors
map <leader>n :NERDTreeToggle<CR>

" ncm2 autocompletion
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" FZF
nmap <leader>; :Buffers<CR>
nmap <leader>f :Files<CR>

" Rust
set hidden
let g:racer_cmd = "/home/pc/.cargo/bin/racer"
" complete function definition
let g:racer_experimental_completer = 1   
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
" racer + rust
" https://github.com/rust-lang/rust.vim/issues/192
let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
let $RUST_SRC_PATH = systemlist("rustc --print sysroot")[0] . "/lib/rustlib/src/rust/src"
" Linter
" only lint on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_virtualtext_cursor = 1
let g:ale_rust_rls_config = {
	\ 'rust': {
		\ 'all_targets': 1,
		\ 'build_on_save': 1,
		\ 'clippy_preference': 'on'
	\ }
	\ }
let g:ale_rust_rls_toolchain = ''
let g:ale_linters = {'rust': ['rls']}
highlight link ALEWarningSign Todo
highlight link ALEErrorSign WarningMsg
highlight link ALEVirtualTextWarning Todo
highlight link ALEVirtualTextInfo Todo
highlight link ALEVirtualTextError WarningMsg
highlight ALEError guibg=None
highlight ALEWarning guibg=None
let g:ale_sign_error = "✖"
let g:ale_sign_warning = "⚠"
let g:ale_sign_info = "i"
let g:ale_sign_hint = "➤"
nnoremap <silent> K :ALEHover<CR>
"nnoremap <silent> gd :ALEGoToDefinition<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" Paredit
let g:paredit_leader = ','

" Javascript
let g:javascript_plugin_flow = 1   " turn on flow
