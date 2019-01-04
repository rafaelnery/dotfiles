let $CONFIG_DIR=fnamemodify(expand("$MYVIMRC"), ":p:h")

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

colorscheme antares
highlight Normal ctermbg=NONE guibg=NONE
