"
" .vimrc
"
" Vim configuration resource file.
"
:set showmode          " Tell you if you're in insert mode
:set tabstop=4         " Set the tabstop to 4 spaces
:set shiftwidth=4      " Shift width should match tabstop
:set expandtab         " Convert tabs to <tabstop> number of spaces
:set nowrap            " Do not wrap lines longer than the window
:set nowrapscan        " Do not wrap to the top of the file while searching
:set ruler             " Show the cursor position all the time
:set showmatch         " Show matching [] () {} etc...
:set smartindent       " Let vim help you with your code indention
:set nohlsearch        " Don't highlight strings you're searching for
:set formatoptions+=ro " Automatically insert the comment character when
                       " you hit <enter> (r) or o/O (o) in a block comment.
:set backspace=2       " makes backspace work like you expect

" Switch syntax highlighting on, when the terminal can support colors
if &t_Co > 2 || has("gui_running")
    :syntax on
    " Change the highlight color for Comment and Special
    " to Cyan.  Blue is too dark for a black background.
    :highlight Comment  term=bold ctermfg=cyan guifg=cyan
    :highlight Special  term=bold ctermfg=cyan guifg=cyan
    :highlight Constant term=bold ctermfg=red  guifg=cyan
endif

" Make vim turn *off* expandtab for files named Makefile or makefile
" We need the tab literal
:autocmd BufNewFile,BufRead [Mm]akefile* set noexpandtab

" Make vim recognize a file ending in ".template" be a C++ source file
:autocmd BufNewFile,BufRead *.template set ft=cpp

"{{{Personal Settings

" Necessary for cool vim things
set nocompatible

" Show what you are typing as a command
set showcmd

" Auto indenting!
set autoindent

" Use spaces instead of a tab character
" set smarttab

" Enable mouse support in console
" set mouse=a

" Enable line numbers (why isn't this default?!) and change their ugly color
set number
highlight LineNr ctermfg=grey

" Incremental search
set incsearch

" Highlight all found things in search
set hlsearch

" Ignore cases in search
set ignorecase

" Use AI to better searches
set smartcase

" Remap jj to escape, you know... because escape is so far
inoremap jj <Esc>

" Status line changes
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Get rid of annoying bell
set noerrorbells
set visualbell
set t_vb=

"}}}

"{{{ Mappings

" Swap ; and : in command line
nore ; :
nore : ;

"}}}
