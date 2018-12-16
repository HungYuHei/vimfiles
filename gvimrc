set guioptions-=m " 隐藏菜单栏
set guioptions-=T " 隐藏工具栏
" 隐藏左、右、底部滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=b

set gcr=a:block-blinkon0 " 光标不闪烁
set novisualbell
set fileencodings=utf-8

" identify platform functions
silent function! MAC_OS()
  return has('macunix')
endfunction
silent function! LINUX()
  return has('unix') && !has('macunix') && !has('win32unix')
endfunction

if MAC_OS()
  set guifont=Monaco:h16
  " ⌘ + ⌥ + ←  or →
  noremap <D-M-Left> :tabprevious<cr>
  noremap <D-M-Right> :tabnext<cr>

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
elseif LINUX()
  set guifont=Ubuntu\ Mono\ Regular\ 14

  " MetaKey + number to switch tabs
  map <M-1> 1gt
  map <M-2> 2gt
  map <M-3> 3gt
  map <M-4> 4gt
  map <M-5> 5gt
  map <M-6> 6gt
  map <M-7> 7gt
  map <M-8> 8gt
  map <M-9> 9gt
  map <M-0> :tablast<CR>

  " copy & paste with system clipboard
  vmap <C-x> "+c
  vmap <C-c> "+y
  vmap <C-v> c<ESC>"+p
  inoremap <C-v> <C-r><C-o>+

  map <M-s> :w<CR>
  map <M-x> :x<CR>
endif
