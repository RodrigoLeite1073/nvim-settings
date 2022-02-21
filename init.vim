syntax on
" Let's make it beautiful
set hlsearch
set number
set relativenumber
set numberwidth=1
"set termguicolors
set ignorecase
set smartcase
set ma
set clipboard+=unnamedplus
"set list lcs=tab:\|\ ""(here is a space)
" Tab settings 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Basic settings 
set encoding=utf-8
set updatetime=100
set hidden
set nobackup
set nowritebackup
set noswapfile

set foldmethod=indent

" Plugins 
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/emmet-vim'
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
 " Plug 'sainnhe/gruvbox-material'
  Plug 'joshdick/onedark.vim'
  Plug 'sainnhe/everforest'
  Plug 'tomasiser/vim-code-dark'
  Plug 'Yggdroot/indentLine'
  Plug 'sheerun/vim-polyglot'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'ap/vim-css-color'
call plug#end()


" Coc settings 
let g:coc_global_extensions = ['coc-pyright', 'coc-css', 'coc-html', 'coc-tsserver', 'coc-emmet']

:let g:NERDTreeWinSize=15

let g:codedark_italics = 1
let g:airline_theme = 'codedark'
" other settings
let g:airline#extensions#tabline#enabled = 1

" set colorschemie
let g:airline_theme = 'everforest'
let g:everforest_background = 'hard'
        colorscheme everforest

nnoremap th gT
nnoremap tl gt
nnoremap tn :tabnew<CR>
nnoremap qw :wa<CR>
nnoremap qq :q<Enter>
nnoremap nt :NERDTree<Enter>
nnoremap tt :terminal<CR>
nnoremap <S-k> :bnext<CR>
nnoremap <S-j> :bprev<CR>

nmap <C-c> \c<Space>
vmap <C-c> \c<Space>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

imap ii <Esc>
imap oo <C-O>o
imap vv <C-O>v
imap NN <C-n>
imap YY <C-y>
