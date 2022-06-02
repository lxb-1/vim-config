"--------------------------emmet-vim插件配置--------------------------
" 配置该插件仅读html/css文件有效
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall

" 配置Tab为补全键盘，替换原来的C-y + ,
autocmd FileType html,css,scss imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

