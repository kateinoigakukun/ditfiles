set number
set ruler
set laststatus=2
set statusline=2
set cmdheight=2
set showmatch
set matchtime=0
set helpheight=10
set list
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=8
set sidescrolloff=16
set sidescroll=1
set wrap
set hidden
set confirm
set autoread
set nobackup
set backupskip=/tmp/*,/private/tmp/*
set noswapfile
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set gdefault
set expandtab
set tabstop=2
set shiftwidth=4
set softtabstop=2
set autoindent
set smartindent
set clipboard=unnamed
set clipboard+=unnamedplus
set mouse=n
set shellslash
set wildmenu
set wildignorecase
set wildmode=list:longest,full
set history=10000
set visualbell
set timeout timeoutlen=0
"  ビープ音を消す
set t_vb=
set noerrorbells

set display=lastline
set textwidth=0
set pumheight=10
set nofoldenable

filetype plugin indent on
execute 'source' expand('$DOTFILE_PATH') .'/vim/dein.vim'

" -------------------------------------
" themeの設定
" -------------------------------------
syntax enable
set t_Co=256

let g:deoplete#enable_at_startup = 1
let g:unite_enable_start_insert=1
let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'


" Recommended key-mappings.

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile Podfile set filetype=ruby
autocmd BufRead,BufNewFile Fastfile set filetype=ruby
autocmd BufRead,BufNewFile *.sil set filetype=sil
autocmd BufRead,BufNewFile *.ll set filetype=llvm
autocmd FileType yaml set shiftwidth=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType sh set shiftwidth=2
autocmd FileType javascript set shiftwidth=2
autocmd FileType json set shiftwidth=2
autocmd FileType html set shiftwidth=2
autocmd FileType tex set shiftwidth=2
autocmd FileType markdown set shiftwidth=2
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType markdown inoremap $ $$<ESC>i
autocmd FileType haskell nnoremap <C-t> :GhcModType<CR>
autocmd FileType sil nnoremap <C-t> :SwiftDemangle<CR>
autocmd FileType llvm nnoremap <C-t> :SwiftDemangle<CR>

autocmd InsertLeave * set nopaste

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
