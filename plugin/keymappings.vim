"================================================================
"============================映射配置============================
"================================================================
" 使用Ctrl+h/j/k/l切换窗口
noremap <M-h> <C-w>h
noremap <M-j> <C-w>j
noremap <M-k> <C-w>k
noremap <M-l> <C-w>l

" 在正常模式下的映射
nnoremap <C-a> <HOME>
nnoremap <C-e> <END>

" 用leader+w直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w <Esc>:w<cr>

" 复制行与粘贴
inoremap <leader>cl <Esc>yyi
inoremap <leader>p <Esc>pa
inoremap <leader>dl <Esc>ddi

" 将Ctrl+k映射为正常模式下的删除行快捷键dd
" inoremap <C-d> <Esc>ddi

" 使用jj进入normal模式
inoremap jj <Esc>`^

" 光标移动
inoremap <C-Up> <Esc>ggi
inoremap <C-Down> <Esc>Gi
inoremap <C-a> <HOME>
inoremap <C-e> <END>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <M-p> <Left>
inoremap <M-n> <Right>

" 括号自动补全
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i
" inoremap < <><Esc>i
