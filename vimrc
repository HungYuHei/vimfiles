call pathogen#infect()

syntax on       " 语法高亮
filetype plugin indent on  " 文件类型检测
filetype plugin on
autocmd BufEnter * :syntax sync fromstart
let mapleader=","

set nocompatible    " 关闭兼容模式
set autoindent      " 打开自动缩,继承前一行的缩进方式，特别适用于多行注释
set nu              " 显示行号
set showcmd         " 显示命令
set noswapfile      " 不使用swp文件
set nobackup        " 关闭备份
set incsearch       " 增量式搜索
set hlsearch        " 高亮搜索
set ignorecase      " 搜索时忽略大小写
set magic           " 额，自己:h magic吧，一行很难解释
set showmatch       " 显示匹配的括号
set nowb
set lbr             " 在breakat字符处而不是最后一个字符处断行
set ai              " 自动缩进
set si              " 智能缩进
set history=100     " vim记住的历史操作的数量，默认的是20
set autoread        " 当文件在外部被修改时，自动重新读取
set mouse=a         " 在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set guioptions-=R   " 隐藏右边滚动条
set formatoptions+=mM   " 正确地处理中文字符的折行和拼接
set whichwrap+=<,>,h,l  " 退格键和方向键可以换行
set fileencodings=utf-8 " 文件UTF-8编码
set pastetoggle=<F10>    " 切换粘贴模式
set ruler
"set list
"set listchars=tab:▸\ ,eol:¬

" 设置缩进
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" 自动完成括号和引号
inoremap <leader>1 ()<esc>:let leavechar=")"<cr>i
inoremap <leader>2 []<esc>:let leavechar="]"<cr>i
inoremap <leader>3 {}<esc>:let leavechar="}"<cr>i
inoremap <leader>4 {<esc>o}<esc>:let leavechar="}"<cr>O
inoremap <leader>q ''<esc>:let leavechar="'"<cr>i
inoremap <leader>w ""<esc>:let leavechar='"'<cr>i

" ^z快速进入shell
nmap <C-Z> :shell<cr>
" 把空格键映射成:
nmap <space> :
" 在NERDTree显示对应文件位置
map <F7> :NERDTreeFind<CR>
" NERDTree插件开关
map <F8> :NERDTreeToggle<CR>
" F9启动taglist插件
nnoremap <silent> <F9> :TlistToggle<CR>
" 在文件名上按gf时，在新的tab中打开
" map gf :tabnew <cfile><cr>
" Tab和Shift-Tab缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" CTRL-C  are Copy
vnoremap <C-C> "+y
" CTRL-V are Paste
map <C-V> "+gP
cmap <C-V> <C-R>+
imap <C-V> <C-R>+

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" reselect the text that was just pasted
nnoremap <leader>V V`]
" 水平分割窗口
nnoremap <leader>s <C-w>s
" 垂直分割窗口
nnoremap <leader>v <C-w>v
" ack
nnoremap <leader>a :Ack
" Display the contents of the yankring
nnoremap <leader>y :YRShow<CR>
" highlight cursor column
nnoremap <leader>lc :set cursorcolumn!<CR>
" highlight cursor line
nnoremap <leader>ll :set cursorline!<CR>

nnoremap <leader>ms :set colorcolumn=80<CR>
nnoremap <leader>mh :set colorcolumn=0<CR>

" 窗口区域切换,Ctrl+jkhl 来切换
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" 窗口区域切换,Ctrl+↑↓←→  来切换
imap <silent> <C-left> <esc><C-W><left>
vmap <silent> <C-left> <esc><C-W><left>
nmap <silent> <C-left> <C-W><left>
imap <silent> <C-right> <esc><C-W><right>
vmap <silent> <C-right> <esc><C-W><right>
nmap <silent> <C-right> <C-W><right>
imap <silent> <C-up> <esc><C-W><up>
vmap <silent> <C-up> <esc><C-W><up>
nmap <silent> <C-up> <C-W><up>
imap <silent> <C-down> <esc><C-W><down>
vmap <silent> <C-down> <esc><C-W><down>
nmap <silent> <C-down> <C-W><down>

"colorscheme blackboard  " 使用blackboard插件的配色
colorscheme monokai

" taglist插件配置
let Tlist_Show_One_File=1    " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1  " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1 " 在右侧窗口中显示taglist窗口

" AutoComplPop
"let g:AutoComplPop_Behavior = {
"\ 'c': [ {'command' : "\<C-x>\<C-o>",
"\ 'pattern' : ".",
"\ 'repeat' : 0}
"\ ]
"\}
"let g:acp_behaviorSnipmateLength=1
