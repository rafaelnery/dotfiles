"
" Author: Rafael Serpa Nery<rafanery0@gmail.com>
"
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
"
syntax enable
set backspace=indent,eol,start
set mouse       =n 
set virtualedit =onemore         
set cursorline                                  " destaca linha  atual
set cursorcolumn                                " destaca coluna atual
set number                                      " mostra numero da linha
set hidden
set nowrap

set wildmenu
set wildmode    =list:longest,full              " Command <tab> completion, list matches, then longest common, then all.
set wildignore  =*.o,*~,*.pyc,CVS,*~,node_modules            " Ignora certos tipos de arquivo

set tabstop=2
set shiftwidth=2
set expandtab
set noshowmode

" Syntax {
  let javaScript_fold   =1                      " JavaScript
  let perl_fold         =1                      " Perl
  let php_folding       =1                      " PHP
  let r_syntax_folding  =1                      " R
  let sh_fold_enabled   =1                      " sh
  let vimsyn_folding    ='af'                   " Vim script
  let xml_syntax_folding=1                      " XML
" }

" Comportamento de Divisão das janelas = *,*' {
  set splitbelow  
  set splitright
"}

" Persistent Undo {
  
  if has('persistent_undo') 
     set undofile         " So is persistent undo ...
     set undolevels=1000  " Maximum number of changes that can be undone
     set undoreload=10000 " Maximum number lines to save for undo on a buffer reload"
     execute('set undodir='.g:undo_dir)
  endif
"}

" Backup {
  execute('set directory='.g:swap_dir.',/tmp')
  execute('set backupdir='.g:swap_dir.',/tmp')
  set backup
"} 
