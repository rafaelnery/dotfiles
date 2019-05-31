
"
" Author: Rafael Serpa Nery<rafanery0@gmail.com>
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
"

let $PLUGDIR='~/.vim/plugged'

if has('nvim') 
 let $PLUGDIR=$PLUGDIR.'/nvim'
else 
 let $PLUGDIR=$PLUGDIR.'/vim'
endif 

call plug#begin($PLUGDIR)

" Core {
  Plug 'Xuyuanp/nerdtree-git-plugin'
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
  Plug 'othree/eregex.vim'
  Plug 'vim-scripts/groovy.vim'
  Plug 'majutsushi/tagbar'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Shougo/denite.nvim'
  Plug 'ctrlpvim/ctrlp.vim'  
  Plug 'editorconfig/editorconfig-vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'Shougo/neco-vim'
  Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
  Plug 'neoclide/coc-neco'
  Plug 'leafgarland/typescript-vim'
  Plug 'janko/vim-test'
" }

" CSS, SASS, SCSS e OTHERS {
  Plug 'hail2u/vim-css3-syntax'
  Plug 'cakebaker/scss-syntax.vim'
" }

" Colors {
  
  Plug 'joshdick/onedark.vim'
  Plug 'rakr/vim-one'
  Plug 'morhetz/gruvbox'
  Plug 'tomasr/molokai'
  Plug 'schickele/vim-nachtleben'
  Plug 'liuchengxu/space-vim-theme'
  Plug 'nanotech/jellybeans.vim'
  Plug 'larsbs/vimterial_dark'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'kristijanhusak/vim-hybrid-material'
  Plug 'jacoborus/tender.vim'
" }
call plug#end()

source $CONFIG_DIR/plugins.config.vim
