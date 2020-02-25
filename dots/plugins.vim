call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup = 1
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
set laststatus=2
Plug 'airblade/vim-gitgutter'

" Color schemes
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'soft'

" Initialize plugin system
call plug#end()
