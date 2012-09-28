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
set showcmd
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
set number

"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%c,%l/%L%)\ %<%P        " offset

"Markdown to HTML
nmap <leader>md :%!markdown <cr>

autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -A1fpUxdjk1

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/dotfiles/vim/bundle/closetag/plugin/closetag.vim
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
