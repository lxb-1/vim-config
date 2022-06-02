"------------------vim-airline/themes状态栏美化插件配置------------------
let g:airline#extensions#tabline#enabled = 1    " 在最上方添加文件说明信息
let g:airline_powerline_fonts = 1               " 支持powerline字体，显示箭头

" 上面标签的类型："default","jsformatter","unique_tail","unique_tail_improved"
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" 设置状态栏主题,vim-airline-themes可使用的主题包括："distinguished","deus"
" ,"kolor","wombat","molokai","angr","badwolf","bubblegum".
" 配置状态栏主题
let g:airline_theme='distinguished'
" 配置状态栏为暗色主题
let g:airline_distinguished_bg='dark'

" 关于状态栏显示内容配置
function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode',' ','branch'])
    let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
    let g:airline_section_c = airline#section#create(['filetype'])
    let g:airline_section_x = airline#section#create(['%P'])
    let g:airline_section_y = airline#section#create(['%B'])
    let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction
autocmd VimEnter * call AirlineInit()

" 配置图标、分割线的细节显示
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇''
