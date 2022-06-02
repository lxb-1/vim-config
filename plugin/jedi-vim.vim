" let g:jedi#show_call_signatures = "1"

"-----------------------------代码跳转的常用快捷键-----------------------------
" 跳转到定义（definitions）或声明（assignment）
" 该方法首先使用jedi#goto_definitions；如果没有definitions，
" 则使用jedi#goto_assignments跳转到内部模块的声明；如果两者
" 都不存在则返回错误信息。
" let g:jedi#goto_command = "<leader>jd"

"***************************注意！*******************************
" jedi#goto_assignments()与jedi#goto_definitions()的区别：
" goto_definitions()会进行递归的跳转查找，而goto_assignments()
" 只会跳转到声明的地方。


" 跳转到assignment，即光标所在方法的第一次定义的函数/类方法的地方。
" 通常跳转到函数。
" let g:jedi#goto_assignments_command = "<leader>jg"

