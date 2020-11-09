
"
" Author: Rafael Serpa Nery<rafanery0@gmail.com>
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
"

let $PLUGDIR='~/.config/plugged'

if has('nvim') 
 let $PLUGDIR=$PLUGDIR.'/nvim'
else 
 let $PLUGDIR=$PLUGDIR.'/vim'
endif 

call plug#begin($PLUGDIR)

" Core {
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/neco-vim'
  Plug 'Shougo/neomru.vim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'editorconfig/editorconfig-vim'
"  Plug 'ervandew/supertab'
  Plug 'eugen0329/vim-esearch'
"  Plug 'leafgarland/typescript-vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'luochen1990/rainbow'
  Plug 'majutsushi/tagbar'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'mhinz/vim-signify'
  Plug 'othree/eregex.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'sjl/gundo.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-scripts/groovy.vim'
  Plug 'chr4/nginx.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }


" }
" CocNViM {
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-neco'
" }

"" CSS, SASS, SCSS e OTHERS {
  Plug 'hail2u/vim-css3-syntax'
  Plug 'cakebaker/scss-syntax.vim'
" }
" Colors {
  
  Plug 'morhetz/gruvbox'
  Plug 'tomasr/molokai'
  Plug 'nanotech/jellybeans.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'kristijanhusak/vim-hybrid-material'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'goatslacker/mango.vim'
" }

call plug#end()

source $CONFIG_DIR/plugins.config.vim
