syntax on
filetype on

autocmd BufNewFile,BufRead *.slim set filetype=slim

highlight slimBrackets ctermfg=cyan guifg=#00ffff
highlight slimQuote    ctermfg=red  guifg=#ff0000
highlight slimNumber   ctermfg=blue guifg=#0000ff
highlight slimComment  ctermfg=green guifg=#00ff00
highlight slimKeyword ctermfg=magenta guifg=purple
