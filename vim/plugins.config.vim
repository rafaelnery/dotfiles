" Author: Rafael Serpa Nery<rafael@nery.info>
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
  let g:airline_left_sep = "\uE0C0"
  let g:airline_right_sep = "\uE0C2"
  let g:airline_mode_map = {
        \ '__'     : '-',
        \ 'c'      : 'C',
        \ 'i'      : 'I',
        \ 'ic'     : 'I',
        \ 'ix'     : 'I',
        \ 'n'      : 'N',
        \ 'multi'  : 'M',
        \ 'ni'     : 'N',
        \ 'no'     : 'N',
        \ 'R'      : 'R',
        \ 'Rv'     : 'R',
        \ 's'      : 'S',
        \ 'S'      : 'S',
        \ ''     : 'S',
        \ 't'      : 'T',
        \ 'v'      : 'V',
        \ 'V'      : 'V',
        \ ''     : 'V',
        \ }

" }

" VimESearch {
  
  let g:esearch = { 'default_mappings': 1, 'adapter': g:search_adapter, 'regex': 1, 'recover_regex': 1 }
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

" Denite {
try
	call denite#custom#source('file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])
	call denite#custom#source('file/rec', 'matchers', ['matcher/cpsm'])

	" Change sorters.
	call denite#custom#source(
	\ 'file/rec', 'sorters', ['sorter/sublime'])

  call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
  " Wrap in try/catch to avoid errors on initial install before plugin is available
  " === Denite setup ==="
  " Use ripgrep for searching current directory for files
  " By default, ripgrep will respect rules in .gitignore
  "   --files: Print each file that would be searched (but don't search)
  "   --glob:  Include or exclues files for searching that match the given glob
  "            (aka ignore .git files)
  "
  call denite#custom#source('file/rec', 'sorters', ['sorter/sublime'])

  " Change mappings.
  call denite#custom#map('insert', '<Down>',   '<denite:move_to_next_line>',     'noremap')
  call denite#custom#map('insert', '<Up>',     '<denite:move_to_previous_line>', 'noremap')
  call denite#custom#map('insert', '<Delete>', '<denite:do_action:delete>',      'noremap')
  
  autocmd FileType denite call s:denite_my_settings()
  function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>    denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d       denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p       denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q       denite#do_map('quit')
    nnoremap <silent><buffer><expr> i       denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j'
  endfunction

catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry

"}
