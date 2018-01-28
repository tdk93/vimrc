filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
set clipboard=unnamedplus
colorscheme ron 
":autocmd InsertEnter,InsertLeave * set cul!
"Autocompeletion of brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"Launch nerdtree at start
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
let g:NERDTreeWinSize=20
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
