call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug 'tpope/vim-rails'
Plug 'tmhedberg/matchit'
Plug 'Lokaltog/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
call plug#end()

syntax on       " 语法高亮
filetype plugin indent on  " 文件类型检测
filetype plugin on
autocmd BufEnter * :syntax sync fromstart
let mapleader=","
au FocusLost * :up " auto save files when focus is lost

set nocompatible    " 关闭兼容模式
set autoindent      " 打开自动缩,继承前一行的缩进方式，特别适用于多行注释
set nu              " 显示行号
set showcmd         " 显示命令
set noswapfile      " 不使用swp文件
set nobackup        " 关闭备份
set incsearch       " 增量式搜索
set hlsearch        " 高亮搜索
set ignorecase      " 搜索时忽略大小写
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
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

" 映射 Mac 风格的光标控制
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" 把空格键映射成:
nmap <space> :
" 在NERDTree显示对应文件位置
map <F7> :NERDTreeFind<CR>
" NERDTree插件开关
map <F8> :NERDTreeToggle<CR>
" F9启动tagbar插件
nnoremap <silent> <F9> :TagbarToggle<CR>

" Highlight matches without moving
nnoremap gs :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" 在文件名上按gf时，在新的tab中打开
" map gf :tabnew <cfile><cr>
nmap <silent> ,/ :nohlsearch<CR>
" reload vimrc
nmap <silent> <leader>rv :so $MYVIMRC<CR>

map <leader>nw :set nowrap!<CR>

" Tab和Shift-Tab缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" reselect the text that was just pasted
nnoremap <leader>V V`]
" Ag
nnoremap <leader>ag :Ag<space>
nnoremap <leader>ar :Ag --ruby<space>
" highlight cursor column
nnoremap <leader>lc :set cursorcolumn!<CR>
" highlight cursor line
nnoremap <leader>ll :set cursorline!<CR>

nnoremap <leader>ms :set colorcolumn=80<CR>
nnoremap <leader>mh :set colorcolumn=0<CR>

" window
nnoremap <leader>ws <C-w>s
nnoremap <leader>s <C-w>s
nnoremap <leader>wv <C-w>v
nnoremap <leader>v <C-w>v
nnoremap <leader>wn <C-w>n
nnoremap <leader>wr <C-w>r
nnoremap <leader>w_ <C-w>_
nnoremap <leader>w\| <C-w>\|
nnoremap <leader>wf <C-w>_
nnoremap <leader>we <C-w>=

" zen-coding(emmet)
map <leader>c <C-y>

" 窗口区域切换,Ctrl+jkhl 来切换
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" copy the file relative/absoulte path to the clipboard
nmap <leader>cp :let @*=expand("%")<CR>
nmap <leader>cP :let @*=expand("%:p")<CR>

" map shortcuts for fugittive
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gco :Gread<CR>
nnoremap <leader>gcm :Gcommit<CR>
nnoremap <leader>gdf :Gdiff<CR>
nnoremap <leader>grsh :Git reset HEAD :%<CR>

"colorscheme blackboard  " 使用blackboard插件的配色
colorscheme monokai

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.project_root']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.log,*.zip,*.min.js,.DS_Store  " MacOSX/Linux
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" easymotion
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
" Move to line over window
" nmap <Leader>L <Plug>(easymotion-overwin-line)

" let g:mustache_abbreviations = 1

" coc.nvim
" make <tab> used for trigger completion, completion confirm, snippet expand and jump
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
