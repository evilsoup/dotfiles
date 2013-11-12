let mapleader=','
syntax on
set wrap
set linebreak

" Toggle spellcheck with <F5>:
nnoremap <f5> :set spell! spelllang=en_gb <cr>
" Toggle syntax highlighting with <F6>:
nnoremap <F6> :if exists("g:syntax_on") <bar> syntax off <bar> else <bar> syntax enable <bar> endif <enter> <enter> 
" ctrl+j and ctrl+k to move around tabs:
nnoremap <c-j> gT
nnoremap <c-k> gt
" Switch ; and : in normal and visual modes
noremap ; :
noremap : ;
noremap q; q:

" Go between buffers in normal mode
noremap gn :bn <cr>
noremap gN :bp <cr>

" Nice looking tabs yay:
hi TabLine cterm=none ctermfg=grey ctermbg=none
hi TabLineSel cterm=bold
hi TabLineFill cterm=none

" Ignore case in searches UNLESS the pattern contains a capital:
set ignorecase
set smartcase
" Incremental searching (search as I type) & highlight search matches:
set incsearch
"set hlsearch

" Underline markdown emphasis rather than highlighting it:
hi markdownItalic cterm=underline
hi markdownBoldItalic cterm=underline,bold

" Able to switch between buffers in a window,
" even if the current one is modified:
set hidden

" jj to make a new paragraph 
inoremap jj <esc>o<cr>

" insert & append to the beginning/end of the current word (or Word)
nnoremap <leader>i lbi
nnoremap <leader>a hea
nnoremap <leader>I lBi
nnoremap <leader>A hEa
 
call pathogen#infect()
command Words :!wc -w %
set encoding=utf-8
command Quoteword :normal lbi"<esc> hea"<esc>
