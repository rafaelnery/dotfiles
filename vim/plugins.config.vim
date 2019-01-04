" Author: Rafael Serpa Nery<rafanery0@gmail.com>
"
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:

" Airline {
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
" }

" VimESearch {
  let g:esearch = {
  \ 'default_mappings': 1,
  \}
" }

" TSNeoVim{
  let g:deoplete#enable_at_startup = 1
" }

" NerdTree  {
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
" }

" Sytastic {
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list            = 1
  let g:syntastic_check_on_open            = 1
  let g:syntastic_check_on_wq              = 1
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
