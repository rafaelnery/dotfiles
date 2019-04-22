" Author: Rafael Serpa Nery<rafanery0@gmail.com>
"
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:

" CtrlP {

  if executable('rg') " RIPGREP
    let g:search_adapter='rg'
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  elseif executable('ag') " SILVER SEARCHER
    let g:search_adapter='ag'
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif
  let g:ctrlp_use_caching = 0
  let g:ctrlp_by_filename = 1
" }

" Airline {
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
" }

" VimESearch {
  
"  let g:esearch = { 'default_mappings': 1, 'adapter': g:search_adapter, 'regex': 1, 'recover_regex': 1 }
  let g:esearch#out#win#open = 'enew'
" }

" NerdTree  {
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
" }

" TagBar {
  let g:tagbar_type_typescript = {                                                  
    \ 'ctagsbin' : 'tstags',                                                        
    \ 'ctagsargs' : '-f-',                                                           
    \ 'kinds': [                                                                     
      \ 'e:enums:0:1',                                                               
      \ 'f:function:0:1',                                                            
      \ 't:typealias:0:1',                                                           
      \ 'M:Module:0:1',                                                              
      \ 'I:import:0:1',                                                              
      \ 'i:interface:0:1',                                                           
      \ 'C:class:0:1',                                                               
      \ 'm:method:0:1',                                                              
      \ 'p:property:0:1',                                                            
      \ 'v:variable:0:1',                                                            
      \ 'c:const:0:1',                                                              
    \ ],                                                                            
    \ 'sort' : 0                                                                    
  \ }                                                                               
  " }
  
" CoC {
" }

