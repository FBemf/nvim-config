" nvim config file
" belongs at ~/.config/nvim/init.vim

" install vim-plug with
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-repeat'
"" I'd like to enable this, but it just doesn't work in nvim now
"Plug 'svermeulen/vim-easyclip'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'jacoborus/tender.vim'
Plug 'desmap/ale-sensible' | Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim'
" Plug 'morhetz/gruvbox'

Plug 'takac/vim-hardtime'       " you asked for it

call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

colorscheme tender
"colorscheme gruvbox
"set background=dark

set number      " line numbers
set linebreak
set mouse=a

set ignorecase  " for /find
set smartcase


"set encoding=utf-8
nnoremap <space> :nohlsearch<CR>  " turn off search highlight with 'space'

" Lozenge char for writing pollen
digraphs ll 9674

let g:hardtime_default_on=0   " It'll stay here until you learn!
let g:hardtime_timeout=750

"set autoindent  " indents to previous line
"set smartindent

"" To make dealing with wrapped text more pleasant

"" These make <count>j behave normally even as
"" j behaves like gj
"nnoremap <expr> j v:count ? 'j' : 'gj'
"nnoremap <expr> k v:count ? 'k' : 'gk'

" kj-ing between wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Terminal
tnoremap <C-w> <C-\><C-n><C-w>

" Allow saving of files as sudo when I forget to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"" NERDtree
nnoremap <leader>f :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"" lightline
let g:lightline = {
      \ 'colorscheme': 'tender',
      \ }
