" nerdcommenter插件使用方法:
" <leader>cc       : 注释当前行及选中的行
" <leader>cm       : 使用一对注释符对区进行注释，前面的注释对每一行都会添加注释
" <leader>cs       : 添加性感注释，一般在代码开始采用该方法
" <leader>cy       : 添加注释，并复制被注释的代码
" <leader>c$       : 注释当前光标到行尾的部分
" <leader>cA       : 跳转到行尾部添加注释，并进入编辑模式
" <leader>cl/b     : 左/右对齐进行注释，主要针对/**/
" <leader>cu       : 取消注释
" <leader>ci       : 反转注释，选中区域已经注释了则取消注释；没有注释的添加注释
" <leader>c<Space> : 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作


"---------------------------------官方给出的配置示例--------------------------------
" 在注释符后面自动添加空格
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
