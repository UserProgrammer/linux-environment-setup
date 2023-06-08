set number
set expandtab
set smarttab
set ts=2
set shiftwidth=2
set autoindent
set copyindent
set ruler
set showmode
set showcmd
set modeline
set title
set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=110
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set laststatus=2
set backspace=indent,eol,start
syntax on

let @c = '0"+y$'
let @p = '"+p'

if has("autocmd")
  augroup templates
    autocmd BufNewFile I[A-Z]*.java 0r ~/.vim/templates/skeleton.interface.java
    autocmd BufNewFile I[^A-Z]*.java 0r ~/.vim/templates/skeleton.class.java
  augroup RND
endif

:let mapleader = "-"
:inoremap <leader>a <C-K>a-
:inoremap <leader>A <C-K>A-

:inoremap <leader>e <C-K>e-
:inoremap <leader>E <C-K>E-

:inoremap <leader>i <C-K>i-
:inoremap <leader>I <C-K>I-

:inoremap <leader>o <C-K>o-
:inoremap <leader>O <C-K>O-

:inoremap <leader>u <C-K>u-
:inoremap <leader>U <C-K>U-

nnoremap -- :call ReplaceVowelWithMacron()<CR>

function! ReplaceVowelWithMacron()
  let vowel_map = {
        \ 'a': 'ā',
        \ 'e': 'ē',
        \ 'i': 'ī',
        \ 'o': 'ō',
        \ 'u': 'ū',
        \ 'A': 'Ā',
        \ 'E': 'Ē',
        \ 'I': 'Ī',
        \ 'O': 'Ō',
        \ 'U': 'Ū',
        \ }

  let line = getline('.')
  let cursor_col = col('.')
  let char_under_cursor = line[cursor_col - 1]

  if type(line) == type([])
    let line = join(line, '')
  endif

  if char_under_cursor =~# '[aeiouAEIOU]'
    let line = substitute(line, '\%'.cursor_col.'c.', vowel_map[char_under_cursor], '')
    call setline('.', line)
  endif
endfunction
