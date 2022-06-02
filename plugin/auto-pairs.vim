" 设置打开/关闭自动括号补全插件快捷键

" Toggle Autopairs的自定义映射
let g:AutoPairsShortcutToggle = '<leader>at'

" Fast Wrap的自定义映射
let g:AutoPairsShortcutFastWrap = '<leader>af'
"*************************Fast Wrap示例**************************
" Fast Wrap的设计思想是：将所有带括号（包括括号中的内容）视为一个
" block；执行该操作后，将光标后面第二个block放到第一个block内。
" (|)'hello' after fast wrap at |, the word will be ('hello')
" (|)<hello> after fast wrap at |, the word will be (<hello>)

" BackInsert的自定义映射
let g:AutoPairsShortcutBackInsert = '<leader>ab'

" 跳转到对应括号的自定义映射
let g:AutoPairsShortcutJump = '<leader>aj'


