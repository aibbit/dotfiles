"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基础设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " 不兼容vi模式
set number               " 开启行号
set relativenumber       " 开启相对行号
" set ruler                " 开启标尺
set showcmd              " 命令模式下显示命令
set showmode             " 底部显示当前所处模式
set cursorline           " 高亮显示当前行
set noeb                 " 关闭错误的提示
set vb t_vb=             " 设置不要响铃
set whichwrap+=<,>,h,l   " 设置光标键跨行
set cmdheight=1          " 设置命令行的高度
set textwidth=0          " 设置禁止自动断行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set showmatch            " auto matching brackets
set clipboard=unnamed
set backspace=indent,eol,start
set mouse=a
set wildmenu
set lazyredraw
set scrolloff=5          " 始终保留5行
set history=100
set ttimeoutlen=0        " 设置<ESC>键响应时间

" filetype plugins
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
filetype indent on       " 自适应不同语言的智能缩进

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if (has("termguicolors"))
"     set termguicolors    " 开启24bit颜色
" else
"     set t_Co=256         " 开启256色支持
" endif

" syntax enable            " 开启语法高亮功能
" syntax on                " 自动语法高亮

" set background=dark      " 设置背景默认黑色
" colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set smartindent          " 智能的选择对其方式
set wrap                 " 自动折行
set smarttab             " 在行和段开始处使用制表符
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set expandtab            " 设置空格替换tab
" set backspace=2          " 使用回车键正常处理indent,eol,start等

set list                 " 设置非可见字符显示
set listchars=tab:>-,trail:-,multispace:---+

" Linebreak on 500 characters
set lbr
set tw=500

" C/CPP缩进方式
set cindent
set cinoptions=g0,:0,N-s,(0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch        " Highlight search results
exec "nohlsearch"
set incsearch       " Makes search act like search in modern browsers
set ignorecase      " Ignore case when searching
set smartcase       " When searching try to be smart about cases
set magic           " For regular expressions turn magic on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set nowritebackup       " 编辑的时候不需要备份文件
set autoread            " 文件在vim之外修改过，自动重新读入
" set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general key setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=' '       " 定义<leader>键
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER>q <C-w>q

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/Desktop/appcar/appcar.c[+] (14:33 2022/03/09)    49/55,41 -44 89% [unix][utf-8][c]

set laststatus=2        " 总是显示状态栏
set statusline=%<%.50F%h%m%r%w
set statusline+=\ (%{strftime(\"%_H:%M\ %Y/%m/%d\",getftime(expand(\"%:p\")))})\
set statusline+=%=%l/%L,%c\ %V\ %p%%
set statusline+=\ [%{&ff}][%{&fenc}]%y
" set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%_H:%M\ %Y/%m/%d\",getftime(expand(\"%:p\")))})%=%l/%L,%c\ %V\ %p%%

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if has("gui_running")
" 	set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 14      " 设置字体
" 	set guioptions-=m           " 隐藏菜单栏
" 	set guioptions-=T           " 隐藏工具栏
" 	set guioptions-=L           " 隐藏左侧滚动条
" 	set guioptions-=r           " 隐藏右侧滚动条
" 	set guioptions-=b           " 隐藏底部滚动条
" 	set showtabline=0           " 隐藏Tab栏
" 	" set guicursor=n-v-c:ver5    " 设置光标为竖线
" 	" set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h14 " set fonts in macvim
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" call plug#begin('~/.vim/plugged')
" Plug 'joshdick/onedark.vim'
" call plug#end()
