let $PLUGDIR='~/.vim/plugged'

if has('nvim') 
 let $PLUGDIR=$PLUGDIR.'nvim'
else 
 let $PLUGDIR=$PLUGDIR.'vim'
endif 


call plug#begin($PLUGDIR)
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
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
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
