" Since NVIM v0.4.0-464-g5eaa45547, commit 5eaa45547975c652e594d0d6dbe34c1316873dc7
" 'secure' is set when 'modeline' is set, which will cause a lot of commands
" cannot run in autocmd when opening help page.
augroup secure_modeline_conflict_workaround
  autocmd!
  autocmd FileType help setlocal nomodeline
augroup END
let g:neomru#filename_format=":."
let $CONFIG_DIR=fnamemodify(expand("$MYVIMRC"), ":p:h")

if (!has('nvim'))
  let $CONFIG_DIR=$CONFIG_DIR.'/.vim'
endif

set background=dark

if (has("termguicolors"))
  set termguicolors
endif

if empty(glob('~/.config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:swap_dir =$CONFIG_DIR.'/swap'
let g:undo_dir =$CONFIG_DIR.'/undo'

source $CONFIG_DIR/plugins.vim
source $CONFIG_DIR/shortcuts.vim
source $CONFIG_DIR/editor.config.vim

colorscheme jellybeans

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

"highlight Normal        guifg=white guibg=none
highlight NormalFloat   guifg=white guibg=#434334
highlight CursorLine    guibg=#434343 
highlight CursorColumn  guibg=#434343 

" Custom menu in Denite
try 
  let s:menus = {}
  let s:menus.ts = {'description': 'Typescript - Angular' }
  let s:menus.ts.command_candidates = [
        \ ['Organize Imports', 'CocCommand tsserver.organizeImports'],
        \ ['Autofix',          'CocCommand tsserver.executeAutofix'],
        \ ['Diagnostics',      'CocList diagnostics'],
        \] 
  call denite#custom#var('menu', 'menus', s:menus)

catch
  echo 'Instal Denite Pls :)'
endtry

