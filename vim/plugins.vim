call plug#begin('~/.vim/plugged')
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
  Plug 'vim-syntastic/syntastic'
  Plug 'othree/eregex.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'vim-scripts/groovy.vim'
  Plug 'majutsushi/tagbar'

  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/denite.nvim'
  Plug 'ctrlpvim/ctrlp.vim'  
  Plug 'zxqfl/tabnine-vim'
  Plug 'editorconfig/editorconfig-vim'
 
  call system('which flow')
  if v:shell_error == 0 || $PLUG_UPDATE == 1
    Plug 'steelsojka/deoplete-flow'
  else 
    echo 'Install FLOW pls'
  endif


  " Colors

  Plug 'joshdick/onedark.vim'
  Plug 'Haron-Prime/Antares'
call plug#end()

source $CONFIG_DIR/plugins.config.vim
