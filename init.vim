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


set t_Co=256   " This is may or may not needed.
set background=dark

" Plugins 
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
"------------------------
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'tomasiser/vim-code-dark'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'NLKNguyen/papercolor-theme'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()


" Coc settings 
"let g:coc_global_extensions = ['coc-pyright', 'coc-tsserver', 'coc-emmet']

let g:NERDTreeWinSize=15

let g:codedark_italics = 1
"let g:airline_theme = 'codedark'
" other settings
let g:airline#extensions#tabline#enabled = 1

 :let g:mapleader=','

" set colorschemie
let g:airline_theme = 'everforest'
let g:everforest_background = 'hard'

colorscheme PaperColor

nnoremap th gT
nnoremap tl gt
nnoremap tn :tabnew<CR>
nnoremap <leader>w :wa<CR>
nnoremap <leader>q :q<Enter>
nnoremap nt :NERDTree<Enter>
nnoremap <leader>t :terminal<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprev<CR>
nnoremap <leader>x :bw<CR>

"nmap <leader>c <,>c<Space>
"vmap <leader>c <,>c<Space>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

imap <leader>m <Esc>
imap <leader>M <Esc>
imap <leader>o <C-O>
imap mn <Down>
imap <leader>l <C-O>$
imap <leader>h <C-O>0
imap <leader>n <C-y>
"imap <leader>n <C-n>
"imap <leader>y <C-y>
