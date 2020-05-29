" ---- basic.vim ----

set runtimepath+=$HOME/.vim
set nocompatible

" ---- windows ----
set fileformats=unix,dos,mac
if has("gui_running")
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif
if has("win32")
    "source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    set diffexpr=MyDiff()
    function MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        let eq = ''
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                let cmd = '""' . $VIMRUNTIME . '\diff"'
                let eq = '"'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction
endif

" sound
set noerrorbells
set novisualbell
if has("gui_running")
    autocmd GUIEnter * set vb t_vb=
endif

" file writing
set autoread
set autowrite
set ruler
set magic
set showmatch

" encoding
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk
set termencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages en_US.UTF-8

" mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" plugins
set noignorecase
filetype on
filetype plugin on
filetype indent on
syntax on
syntax enable
set nobackup
set noswapfile
set nowritebackup

" fix bug for gvim
map Q <Nop>

" no more window
set completeopt=menu

" fold code
set foldenable
set foldmethod=indent
set foldnestmax=99
set foldlevel=99
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

" indent
set cindent
set smartindent
set autoindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab

" display
set showcmd
set hlsearch
set backspace=indent,eol,start whichwrap+=<,>,[,]
set wrap
set clipboard+=unnamed

set list listchars=tab:>-,trail:.,extends:>
set modifiable

set cursorline
set scrolloff=1
set ttyfast
set lazyredraw
set nocursorcolumn
set norelativenumber
set number
set laststatus=2
" conceallevel for json
set conceallevel=0

if has("gui_running")
    " gvim toolbox
    set guioptions-=T
    " gvim menu
    set guioptions-=m
endif

" guifonts
if has("win32") || has("mac")
    "set guifont=Inconsolata:h10
    "set guifont=DejaVu\ Sans\ Mono:h9
    "set guifont=IBM\ Plex\ Mono:h9
    "set guifont=Bitstream\ Vera\ Sans\ Mono:h9
    "set guifont=Fira\ Code:h9
    "set guifont=Monaco:h9
    "set guifont=Fantasque\ Sans\ Mono:h10
    set guifont=Hack:h12
else
    "set guifont=Inconsolata\ 10
    "set guifont=DejaVu\ Sans\ Mono\ 9
    "set guifont=IBM\ Plex\ Mono\ 9
    "set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
    "set guifont=Fira\ Code\ 9
    "set guifont=Monaco\ 9
    "set guifont=Fantasque\ Sans\ Mono\ 10
    set guifont=Hack\ 10
endif
