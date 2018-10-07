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
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark

set number      " line numbers
"set encoding=utf-8
nnoremap <space> :nohlsearch<CR> " turn off search highlight with 'space'

set ignorecase  " for /find
set smartcase

"set autoindent  " indents to previous line
"set smartindent

" Terminal
" tnoremap <Esc> <C-\><C-n>

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
      \ 'colorscheme': 'gruvbox',
      \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}
