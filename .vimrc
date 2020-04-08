set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
syntax on

let @c = '0"+y$'
let @p = '"+p'

if has("autocmd")
  augroup templates
    autocmd BufNewFile I[A-Z]*.java 0r ~/.vim/templates/skeleton.interface.java
    autocmd BufNewFile I[^A-Z]*.java 0r ~/.vim/templates/skeleton.class.java
  augroup RND
endif
