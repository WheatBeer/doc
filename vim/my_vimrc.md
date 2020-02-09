" Syntax Highlighting
if has("syntax")
    syntax on
endif
" Indent
set autoindent
set cindent " indent for C
set smartindent
" format/layout
set background=dark
set title
set nu " line number
set tabstop=4 shiftwidth=4 softtabstop=4 smarttab
set ruler
set paste " no auto-indenting when pasting 
set wrap
set linebreak
set scrolloff=4
" etc. 
set cursorline
set hlsearch " highlight search
set incsearch
set ignorecase " ignore uppercase and lowercase when searching
set laststatus=2 " status line
set showmode
set showcmd
set showmatch " show the pair bracket
set history=1000
set nobackup
set backspace=eol,start,indent
set mouse=a
set autowrite
set autoread

" Uncomment the following to have Vim jump to the last position when reopening a file
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "norm g`\"" |
\ endif

" encoding ko
if $LANG[0]=='k' && $LANG[1]=='o'
  set fileencoding=korea
endif
