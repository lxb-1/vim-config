"================================================================
"===========================基本配置=============================
"================================================================

"---------------------------通用配置-----------------------------

set number
" 不显示编辑状态
set noshowmode
set noruler
" 设置换页滚动最上/下预留行
set scrolloff=4

set t_Co=256

" 按F2进入粘贴模式
" set pastetoggle=<F2>

" 打通与系统剪切板的连通
set clipboard^=unnamed,unnamedplus


" 高亮显示当前行
set cursorline
hi CursorLine cterm=None ctermbg=darkgray ctermfg=white

" 设置Vim中可以使用鼠标
set mouse=a

" 在下方/左边新建文档
set splitbelow
set splitright

" 设置搜索忽略大小写
set ignorecase
" 设置当搜索的内容由大写内容时候不忽略大小写
set smartcase

" 设置快捷键延迟
" set notimeout

" 设置Vim中Leader键盘组合命令延迟时间
" :autocmd InsertEnter * set timeoutlen=200
" :autocmd InsertLeave * set timeoutlen=1000
:autocmd InsertEnter * set timeoutlen=1000
:autocmd InsertLeave * set timeoutlen=2000

" 设置背景透明
hi Normal ctermfg=252 ctermbg=none

"---------------------------编码配置-----------------------------
set enc=utf-8   		" 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf8   " 
set encoding=utf8       " 
set fileencodings=ucs-bom,utf-8,cp936   " 
set fileencoding=utf8   "

"---------------------------编码配置-----------------------------
" set langmenu=zh_CN.UTF-8   	 
" set helplang=utf-8       	 

"------------------------缩进与排版配置--------------------------
set expandtab   		" 将制表符扩展为空格
set tabstop=4           " 设置编辑时制表符占用的空格数
set shiftwidth=4        " 设置格式化时制表符占用的空格数
set softtabstop=4       " 设置4个空格为制表符

"-------------------------代码补全配置---------------------------
set wildmenu                " vim自身命令行模式智能补全
set completeopt-=preview    " 补全时不显示窗口，只显示补全列表

"---------------------------缓存配置-----------------------------
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 在vim之外修改，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件时，弹出确认

"-----------------------Python解析器配置--------------------------
" 设置Python解释器选择
" let g:ycm_python_binary_path = '/usr/bin/python3.8'
" let g:python_host_skip_check = 1
" let g:python_host_prog = '/bin/python'
" let g:python3_host_skip_check = 1
" let g:python3_host_prog = '/bin/python3'

"-----------------------代码一键运行配置--------------------------
" 一键运行代码，映射为F5
map <F5> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python %"
elseif &filetype == 'html'
            exec "!firefox % &"
elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
elseif &filetype == 'mkd'
            exec "!~/.vim/markdown.pl % > %.html &"
            exec "!firefox %.html &"
endif
    endfunc

