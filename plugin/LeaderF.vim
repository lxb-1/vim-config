"================================LeaderF说明及配置========================================
" LeaderF是一个用Python写的vim插件，通过模糊查找的方式，快速找到目标文件。它还有很多衍生功能：快速打开/定位某个buffer、最近使用的文件（mru）、tags（包括函数/类/变量等）、命令历史、文件中某一行、vim的help、marks等等。

 "----------------------------------LeaderF快捷键------------------------------------------
" <C-c>:退出LeaderF
" <C-R>:在模糊查找和regex查找模式之间进行切换
" <C-F>:在全路径查找和文件名查找模式之间进行切换
" <Tab>:切换到正常模式
" <C-v>:从剪切板粘贴
" <C-u/w>:删除光标以前的所有搜索内容
" <C-j/k>:向下/上移动搜索位置
" <Up/Down>:上一条/下一条历史命令
" <CR>:打开选中的文件
" <C-x/[>:以水平/垂直分割方式打开文件
" <C-t>:以新的Tab窗口方式打开文件
" <C-\>:可以自主选择文件打开方式，S-水平分割、V-垂直分割、T-Tab窗口、D-使用默认（Tab页）
" <F5>:刷新缓存
" <C-s>:多文件选择
" <C-a>:选择所有文件
" <C-l>:清除所有选择
" <C-p>:预览文件

" !!查看LeaderF的可配置参数可使用:h g:Lf_CommandMap

"-----------------------------------LeaderF配置-------------------------------------------
" 下面的配置会引起状态栏的Bug
" 默认情况下是显示文件图标
let g:Lf_ShowDevIcons = 1
" 还可以设置字体
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" 如果设置的Nerd字体，还需要设置如下变量：
" set ambiwidth=double

" 设置窗口位置
let g:Lf_WindowPosition = 'popup'

" 显示上次搜索结果
let g:Lf_PreviewInPopup = 1

"--------------------------------LeaderF自定义快捷键---------------------------------------
" 在当前Buffer根据目录名查找内容
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" 在历史搜索中根据目录查找内容
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" 
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" 
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

" <C-b>和<C-f>可以在选取内容、放到查找目标上进行即可进行查找
" 在当前缓存区查找内容映射为<C-b>
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" 在当前目录查找内容映射为<C-f>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" 可视化模式下的内容查找
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

"-------------------------------LeaderF中tags跳转配置--------------------------------------
" should use `Leaderf gtags --update` first

" 设置ctags的可执行程序地址
" let g:Lf_Ctags = '~/ctags/ctags'

"let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
