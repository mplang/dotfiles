set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/unite.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tmhedberg/SimpylFold'
Bundle 'tpope/vim-sensible'

colorscheme solarized
let g:solarized_termtrans=1
set background=dark

set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

set cmdheight=2
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch

set lazyredraw

set matchtime=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set expandtab
set shiftwidth=4
set tabstop=4

set lbr
set tw=500
set si
set wrap
set number
set encoding=utf-8

"set statusline=   " clear the statusline for when vimrc is reloaded
"set statusline+=%-3.3n\                      " buffer number
"set statusline+=%f\                          " file name
"set statusline+=%h%m%r%w                     " flags
"set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
"set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
"set statusline+=%{&fileformat}]              " file format
"set statusline+=%=                           " right align
"set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
"set statusline+=%b,0x%-8B\                   " current char
"set statusline+=%-14.(%c,%l/%L%)\ %<%P        " offset

"Markdown to HTML
nmap <leader>md :%!markdown <cr>

autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -A1fpUxdjk1

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source /usr/share/vim/vim73/plugin/closetag.vim

autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

au BufNewFile,BufRead PKGBUILD set filetype=PKGBUILD

set omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete

nmap <F8> :TagbarToggle<CR> 

nnoremap <leader>ib :!ino build<CR>
nnoremap <leader>iu :!ino upload<CR>
nnoremap <leader>is :!ino serial<CR>

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

let g:syntastic_python_checkers=['flake8']
let g:neocomplcache_enable_at_startup = 1
