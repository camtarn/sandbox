call pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Was using Matchit plugin here for extended % matching - maybe grab that?

set foldcolumn=0

syntax enable
colorscheme default

set nocompatible
set autoindent
set smartindent
set copyindent
set preserveindent
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set textwidth=0 " No auto wrapping
set incsearch
set history=100
set undolevels=1000
set mouse=a
"set ttymouse=xterm2
set pastetoggle=<F12>
set gdefault
set ignorecase
set smartcase
set hidden
set wildmenu
set wildmode=list:longest
set wildignore+=*/tmp/*,*/source_maps/*
set ttyfast
set number
set backspace=indent,eol,start
set laststatus=2
set autochdir
set ssop-=options " do not store global and local values in a session
set fileformats=unix,dos
set directory=~/.vimtmp/

" nnoremap / /\v
" vnoremap / /\v
set hlsearch
nnoremap // :noh<cr>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
inoremap jk <ESC>
nnoremap <c-w>+ :res +15<cr><cr>
nnoremap <c-w>- :res -15<cr><cr>
noremap <F5> <ESC>:e<cr>

nnoremap / :call NERDComment('n', 'Toggle')<cr>
vnoremap / :call NERDComment('x', 'Toggle')<cr>

nnoremap <F9> :set nonumber!<cr> 
nnoremap <F8> oconsole.log 'got to <C-R>=line('.')<CR>'<ESC>
nnoremap <F7> ^yt:oconsole.log 'got to <ESC>pA'<ESC>
nnoremap <F6> yiwoconsole.log '<ESC>pA:', <ESC>p

cabbrev w!! w !sudo tee %

" Stop smartindent from putting #-comments into col 1
inoremap # X#

au BufNewFile,BufRead *.rb set filetype=ruby

command Reload bufdo e
command Inline normal ma#f=w"by$dd`aT de"bP

let g:ctrlp_max_height = 30
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 'rc'
nnoremap r :CtrlPMixed<cr>
nnoremap <c-p> :CtrlPMixed<cr>

"highlight DebugCommands ctermbg=yellow guibg=yellow ctermfg=black guifg=black
"match DebugCommands /console\.\w\+/
"autocmd BufWinEnter,InsertEnter,InsertLeave *.coffee match DebugCommands /console\.\w\+/
inoremap clog console.log 
inoremap _of <ESC>T_yeA_.fetch( options, '<ESC>pA' )

" Tip! Use ':verbose set cindent?' to check where cindent last got set from.
