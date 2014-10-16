map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r  :e ++enc=koi8-r<CR>
menu Encoding.cp1251  :e ++enc=cp1251<CR>
menu Encoding.cp866   :e ++enc=cp866<CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
menu Encoding.utf-8   :e ++enc=utf-8<CR>
map <F12> :emenu Encoding.<Tab>

syntax on 
" ignore case while searching 
set ic
" hightlight searhc 
" set hls
" use incremental search 
set is
" max text width 
set textwidth=80
" minimal window height 
set winminheight=0
" max size for the active window by default
set noequalalways
set winheight=9999
" set font Courier New Cyr
set guifont=courier_new:h10:cRUSSIAN
" some magic for working with russian lan 
set iskeyword=@,48-57,_,192-255
" setting tab size
set expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
" wrap by a word
set linebreak
set dy=lastline
" line numbers
set number

" fold 
set foldenable
set foldmethod=marker
set foldlevel=9000

" colors
colorscheme molokai
set term=screen-256color

"automatically save your foldings 
autocmd BufWinLeave *.* mkview 
"automatically restore your foldings
autocmd BufWinEnter *.* silent loadview 

set nocompatible
filetype on
filetype plugin on

" to prevent shell conflicts
set shell=/bin/bash

" show command you entering at the bottom
set showcmd  
