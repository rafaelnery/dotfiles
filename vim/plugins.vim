"
" Author: Rafael Serpa Nery<rafanery0@gmail.com>
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
"
call plug#begin('~/.vim/plugged')

" Core
Plug 'ervandew/supertab'
Plug 'eugen0329/vim-esearch'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'othree/eregex.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/groovy.vim'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
Plug 'ctrlpvim/ctrlp.vim'  
Plug 'editorconfig/editorconfig-vim'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'

" TS/JS
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'HerringtonDarkholme/yats.vim'

" CSS, SASS, SCSS e OTHERS
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'

" Colors
Plug 'joshdick/onedark.vim'
Plug 'Haron-Prime/Antares'
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'

call plug#end()

source $CONFIG_DIR/plugins.config.vim
