function! NerdToggle() 
  if g:NERDTree.IsOpen() 
    :NERDTreeToggle
  else 
    if bufexists(expand('%')) 
      :NERDTreeFind
    else 
      :NERDTreeToggle
    endif
  endif
endfunction

let mapleader = ","

imap <F2> <esc>:w<CR>
map <F2> :w<CR>
map <C-b> :Denite buffer -split=floating<CR>
map <C-B> :Denite buffer -split=floating<CR>
map <C-p> :Denite file/rec<CR>
map <C-P> :Denite file/rec<CR>
noremap <leader>' :Denite file_mru -split=floating<CR>
noremap <leader>' :Denite file_mru -split=floating<CR>
map <leader>u :GundoToggle<CR>
map <leader>t :call NerdToggle()<CR>
map <leader>n :call NerdToggle()<CR>
map <leader>g :Denite grep -split=floating<CR>
" Remover palavra a esquerda ou a direita  no modo inserção com CTRL + DEL ou CTRL + BACKSPACE {
imap <C-Del> <C-o>dw
imap <C-Backspace> <C-o>
" }

if has("gui_running")
  "  inoremap <C-Space> <C-x><C-o>
  inoremap <silent><expr> <c-space> coc#refresh()

else 
  if has("unix")
    inoremap <silent><expr> <c-space> coc#refresh()
    inoremap <silent><expr> <c-@> coc#refresh()
    inoremap <Nul> coc#refresh()
  endif
endif

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Buffers {
map <leader>h :bprevious<CR>
map <leader>l :bnext<CR>
map <C-Tab> :bnext<CR>
map <F4> <esc>:bdelete<CR>
" }
"
" Gotos {
nmap <silent>   gd <Plug>(coc-definition)
nmap <C-LeftMouse> <Plug>(coc-definition)
nmap <silent>   gy <Plug>(coc-type-definition)
nmap <silent>   gi <Plug>(coc-implementation)
nmap <silent>   gr <Plug>(coc-references)
"}

" Format {
vmap <leader>ft <Plug>(coc-format-selected)
nmap <leader>ft :call CocAction('format')<CR>
nmap <leader>o :call CocAction('runCommand', 'editor.action.organizeImport')<cr>
"}

nnoremap <silent> <ESC><ESC> :nohlsearch<CR>
nnoremap <silent> <F1> :call <SID>show_documentation()<CR>
inoremap <silent> <F1> <ESC>:call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rf <Plug>(coc-references) 
nmap <leader>rn <Plug>(coc-rename) 
nmap <F3> <Plug>(coc-references) 
nmap <F5> <Plug>(coc-rename) 
nmap <F12> <Plug>(coc-definition)

