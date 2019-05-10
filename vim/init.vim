let $CONFIG_DIR=fnamemodify(expand("$MYVIMRC"), ":p:h")

if !has('nvim') 
  let $CONFIG_DIR=$CONFIG_DIR.'/.vim'
endif

set background=dark
set termguicolors

if empty(glob('~/.config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:swap_dir =$CONFIG_DIR.'/swap'
let g:undo_dir =$CONFIG_DIR.'/undo'

source $CONFIG_DIR/plugins.vim
source $CONFIG_DIR/shortcuts.vim
source $CONFIG_DIR/editor.config.vim

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
let g:airline_theme = "hybrid"

colorscheme hybrid_material
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
