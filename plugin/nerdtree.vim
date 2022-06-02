"-------------------------nerdtree插件配置-------------------------
" 当目录树为最后一个窗口则关闭VIM
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 当目录树为最后一个窗口则关闭VIM
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 不显示帮助信息?
" let NERDTreeMinimalUI = 1

" NERDTree的快捷键配置
" nnoremap <leader>nn :NERDTreeFocus<CR>   " 将,+n映射为NERDTreeFocus
" nnoremap <leader>nm :NERDTree<CR>        " 将,+m映射为NERDTree
" nnoremap <leader>nt :NERDTreeToggle<CR>  " 将,+t映射为NERDTreeToggle
" nnoremap <leader>nf :NERDTreeFind<CR>    " 将,+f映射为NERDTreeFind

" 当使用U和C切换目录时，以切换的位置为VIM的工作目录
" let NERDTreeChDirMode=2
