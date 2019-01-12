let mapleader = ","

imap <F2> <esc>:w<CR>
map <F2> :w<CR>

map <leader>u :GundoToggle<CR>
map <leader>t :NERDTreeToggle<CR>

map <leader>p :set paste!<CR>


" Remover palavra a esquerda ou a direita  no modo inserção com CTRL + DEL ou CTRL + BACKSPACE {
  imap <C-Del> <C-o>dw
  imap <C-Backspace> <C-o>
" }
" Remoção  {
  inoremap <C-K> <esc>ddi
  nnoremap <C-K> <esc>dd

" }
if has("gui_running")
  inoremap <C-Space> <C-x><C-o>
else 
  if has("unix")
    inoremap <Nul> <C-x><C-o>
  endif
endif
