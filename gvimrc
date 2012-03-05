" 字体
set guifont=Monaco:h14
" 光标不闪烁
set gcr=a:block-blinkon0
" 隐藏左、右、底部滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 隐藏菜单栏
set guioptions-=m
" 隐藏工具栏
set guioptions-=T

set novisualbell
set fileencodings=utf-8

" ⌘ + ⌥ + ←  or →
noremap <D-M-Left> :tabprevious<cr>
noremap <D-M-Right> :tabnext<cr>
" ⌘ + number
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>
