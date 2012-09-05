call pathogen#infect()
set nocompatible
if has("autocmd")
    filetype on
    filetype plugin on
    filetype indent on
endif

syntax enable

set autoread

set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set number


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -A1fpUxdjk1
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -A1fpUxdjk1

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/dotfiles/vim/bundle/closetag/plugin/closetag.vim
