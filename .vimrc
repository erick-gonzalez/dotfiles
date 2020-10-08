call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

syntax enable

colorscheme gruvbox
let g:airline_theme='gruvbox'

augroup autoformat_settings
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
augroup end

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set background=dark
set termguicolors
set relativenumber
set colorcolumn=80
set timeoutlen=1000 ttimeoutlen=0
set autoread 

let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"

let mapleader = " "
let g:netrw_browse_split = 4
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>

nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <C-p> :Files<CR>

map <silent> gd <Plug>(coc-definition)
map <silent> gr <Plug>(coc-references)
map <silent> gf <Plug>(coc-fix-current)

noremap <leader>I :py3f /usr/lib/llvm-10/share/clang/clang-include-fixer.py<cr>

let g:clang_include_fixer_query_mode = 1
