nnoremap <leader>gr :EasyCompleteReference<CR>
nnoremap <leader>gd :EasyCompleteGotoDefinition<CR>
nnoremap <leader>rn :EasyCompleteRename<CR>
nnoremap <leader>gb :BackToOriginalBuffer<CR>

let g:easycomplete_diagnostics_enable = 1
let g:easycomplete_signature_enable = 1
let g:easycomplete_tabnine_enable = 1
let g:easycomplete_cursor_word_hl = 1
let g:easycomplete_scheme = "CadetBlue3"
let g:easycomplete_menu_skin = {
    \   "buf": {
    \      "kind":"羅",
    \      "menu":"[B]",
    \    },
    \   "snip": {
    \      "kind":"",
    \      "menu":"[S]",
    \    },
    \   "dict": {
    \      "kind":"",
    \      "menu":"[D]",
    \    },
    \   "tabnine": {
    \      "kind":"",
    \    },
    \ }
let g:easycomplete_sign_text = {
    \   'error':       "",
    \   'warning':     "",
    \   'information': '',
    \   'hint':        ''
    \ }

let g:easycomplete_filetypes = {"r": {
    \ "whitelist": []
    \ }}
let g:easycomplete_tabnine_config = {
    \ 'line_limit': 800,
    \ 'max_num_result': 10,
    \ }

let g:easycomplete_lsp_type_font = {
    \ 'class': "",     'color': "",
    \ 'constant': "",  'constructor': "",
    \ 'enum': "",      'enummember': "",
    \ 'field': "料",    'file': '',
    \ 'folder': "",    'function': "ƒ",
    \ 'interface': "", 'keyword': "",
    \ 'snippet': "",   'struct': "פּ",
    \ 'text': "",      'typeparameter': "",
    \ 'variable': "",  'module':'',
    \ 'event': '',
    \ 'r':'', 't':'',
    \ 'f':'', 'c':'',
    \ 'u':'𝘶', 'e':'𝘦',
    \ 's':'פּ', 'v':'',
    \ 'i':'𝘪', 'm':'',
    \ 'p':'', 'k':'𝘬',
    \ 'o':"𝘰", 'd':'𝘥',
    \ 'l':"𝘭", 'a':"𝘢",
    \ }

" TabNine Surpport
let g:easycomplete_tabnine_enable = 0

" line_limit:光标前面/后面传送给TabNine的行数；如果设置的小点有利于提高性能，默认1000
" max_num_result:来自于TabNine的最大结果，默认10
let g:easycomplete_tabnine_config = {
    \ 'line_limit': 1000,
    \ 'max_num_result' : 10,
    \ }
