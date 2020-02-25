" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirsw
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Enable installed plugins
so ~/.vim/plugins.vim

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Set nline
set number

" Set ';' to fzf
map ; :Files<CR>

" Set control+o to NERDTree
map <C-o> :NERDTreeFind<CR>

" Set control-b and control-n to previous and next buffer
map <C-b> :bprevious<CR>
map <C-n> :bnext<CR>

" Start NERDTree with empty vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Disable default status bar
set noshowmode

""" Color scheme
""  Monokai
"colorscheme monokai

""  Gruvbox
colorscheme gruvbox
set background=dark

"" Onedark
"colorscheme onedark

"" Delek
"colorscheme delek
