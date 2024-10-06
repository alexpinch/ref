" MOVE THIS TO ~/.vim/syntax/slim.vim

syntax match slimBrackets /{\{\}}/ containedin=ALLBUT,slimComment 
syntax match slimComment /\/\/.*/ containedin=ALL
syntax match slimQuote /"[^"]*"/ containedin=ALLBUT,slimComment
syntax match slimQuote /'[^']*'/ containedin=ALLBUT,slimComment
syntax match slimNumber /\v(^|[^a-zA-Z])\d+(\.\d+)?([^a-zA-Z]|$)/ containedin=ALLBUT,slimComment
syntax keyword slimKeyword return if else containedin=ALLBUT,slimComment

highlight link slimBrackets Special
highlight link slimQuote String
highlight link slimNumber Number
highlight link slimComment Comment
highlight link slimKeyword Keyword

