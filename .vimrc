call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

syntax enable

colorscheme gruvbox

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
set relativenumber
set colorcolumn=80

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <leader>h :TmuxNavigateLeft<CR>
nnoremap <silent> <leader>l :TmuxNavigateRight<CR>
nnoremap <silent> <leader>k :TmuxNavigateUp<CR>
nnoremap <silent> <leader>j :TmuxNavigateDown<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>ps :Rg<SPACE>

imap jj <Esc>
nmap <C-P> :Files<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

