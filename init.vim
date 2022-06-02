"------------------------Leader键映射---------------------------
let mapleader=' '
let g:mapleader=' '
" let g:mapleader = " "
" let g:maplocalleader = ' '

"================================================================
"============================VIM插件=============================
"================================================================
call plug#begin()

"--------------------------界面美化插件--------------------------
" 启动画面插件
Plug 'mhinz/vim-startify'

" 主题插件
Plug 'morhetz/gruvbox'

" 文件类型icon显示插件
Plug 'ryanoasis/vim-devicons'
" 下面两个插件是给图标添加颜色的插件

" 状态栏美化
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 可视化缩进线条插件
Plug 'Yggdroot/indentLine'

"----------------------文件管理与搜索插件-----------------------
" nerdtree：文件目录树插件
" Plug 'preservim/nerdtree'

" the_silver_search：一款更快的搜索插件
Plug 'ggreer/the_silver_searcher'

" LeaderF(!!)：一款非常好用的搜索平台插件，其上面有很多子插件，通过
" 该插件可以实现：各种查找文件方式（异步检索/模糊查找/正则表达式
" 查找/中文查找）、快速定位tags（函数/类/变量等）、查找历史命令、
" 切换Colorscheme等很多功能。
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" fzf模糊查找插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"rnvimr：nvim中打开ranger的插件
Plug 'kevinhwang91/rnvimr'

"-------------------------环境配置插件--------------------------
" vim-floaterm插件：nvim中打开终端插件
Plug 'voldikss/vim-floaterm'

" Conda环境配置插件
Plug 'cjrh/vim-conda'

"-------------------------编程语言插件--------------------------
" 编程语言代码自动补全引擎
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nvim-lspconfig：针对NVIM的LSP服务管理插件
if has("nvim")
    Plug 'williamboman/nvim-lsp-installer'
endif

" vim-easycomplete：
Plug 'jayli/vim-easycomplete'

" ultisnips：支持Python的代码片段
Plug 'SirVer/ultisnips'

" vimspector：多代码图形调试平台插件
" Plug 'puremourning/vimspector'

" nerdcommenter：更多功能的注释插件
Plug 'preservim/nerdcommenter'

" ctags：代码类、方法、变量等标签插件
Plug 'universal-ctags/ctags'

" tagbar：方便浏览当前文件代码类、方法、变量等标签，
" 并显示标签结构的插件
Plug 'preservim/tagbar'

"--------------------------编辑效率插件------------------------
" vim-easymotion：光标快速移动插件
Plug 'easymotion/vim-easymotion'

" auto-pairs：成对插入和删除括号、parens、引用插件
Plug 'jiangmiao/auto-pairs'

" vim-surround：The plugin provides mappings to easily delete, 
" change and add such surroundings in pairs.
" 一个启动给选定内容添加、删除、修改为使用诸如"" '' {} [] <>等
" 符号包围的效果，甚至可以是tags，比如<div>、<span>、<herf>等等。
Plug 'tpope/vim-surround'
" vim-speeddating：快速输入时间插件
" Plug 'tpope/vim-speeddating' 
" vim-repeat：实现通过.重复操作插件
Plug 'tpope/vim-repeat'

" Emmet-vim：HTML快速补全插件
Plug 'mattn/emmet-vim'

" vim-snippets：代码片段集合平台插件
" Plug 'honza/vim-snippets'

"-------------------------Git版本控制插件----------------------

" vimagit：方便管理vim中工作流的插件
Plug 'jreybert/vimagit'

" vim-signify：Signify (or just Sy) uses the sign column to
" indicate added, modified and removed lines in a file that 
" is managed by a version control system (VCS).
Plug 'mhinz/vim-signify'


call plug#end()

