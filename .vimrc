source ~/.vim/bundles.vim

if has('gui_running')
    set background=light
    colorscheme solarized
    set guioptions=
else
    " Set up pretty colors
    if &term ==? "xterm-256color" || &term ==? "screen-256color-bce"
        set t_Co=256
        colorscheme typofree
        "colorscheme wombat
        set background=dark
    else
        colorscheme default
    endif
endif

"set viminfo='100,f1,<50,s10,h,%
set viminfo='1000,f1,<500
set cursorcolumn
set cursorline

" buffer handling
set hidden
set wildchar=<Tab> wildmenu wildmode=full

" define leader modifier
let mapleader = ","

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :buffers<CR>:buffer<Space>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" First, enable status line always
set laststatus=2
" Informative status line
" It's useful to show the buffer number in the status line.
set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{GitBranch()}
"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
"set statusline=%{fugitive#statusline()}

" Keep a longer history (default 20)
set history=200

" Case-smart searching
set ignorecase
set smartcase

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" syntax & indent
let python_highlight_all=1
syntax on
filetype on
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
nmap <silent> <leader>n :silent :nohlsearch<CR>

if version < 730
    set listchars=tab:>-,trail:-
else
    set listchars=tab:>-,trail:·,eol:$
endif

nmap <silent> <leader>s :set nolist!<CR>

" save shortcut
nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>
vnoremap <F2> <ESC>:w<CR>

" highlight text over line length
if exists("&colorcolumn")
    set colorcolumn=81
endif
hi ColorColumn ctermbg=black guibg=#292929

hi default ShowMarksHLl ctermfg=black ctermbg=NONE cterm=bold guifg=black guibg=NONE gui=bold
hi default ShowMarksHLu ctermfg=black ctermbg=NONE cterm=bold guifg=black guibg=NONE gui=bold
hi default ShowMarksHLo ctermfg=black ctermbg=NONE cterm=bold guifg=black guibg=NONE gui=bold
hi default ShowMarksHLm ctermfg=black ctermbg=NONE cterm=bold guifg=black guibg=NONE gui=bold

highlight OverLength ctermbg=NONE ctermfg=white guibg=#592929 
match OverLength /\%>81v.\+/

" Turn on line numbers
set number
" Toggle line numbers and fold column for easy copying
nnoremap <F12> :set nonumber!<CR>:set foldcolumn=0<CR>

" revision controll
"noremap <F3> :call Svndiff("prev")<CR>
"noremap <F4> :call Svndiff("next")<CR>
"noremap <F5> :call Svndiff("clear")<CR>

" Turn on smart indent
set smartindent     " it may brake Eric Mc Sween's indent fix
set tabstop=4		" set tab character to 4 characters
set shiftwidth=4	" indent width for autoindent
set expandtab		" turn tabs into whitespace

" Vasiliev python syntax corection
filetype plugin indent on
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Shortcut to auto indent entire file
nmap <F9> 1G=G
imap <F9> <ESC>1G=Ga

" Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

" Enable indent folding
"set foldenable
"set fdm=indent

" set space to toggle a fold
"nnoremap <space> za

" Execute current python code
map <buffer> <Leader>r :w<cr>:!/usr/bin/env python % <cr>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Nerdtree & taglist
map <unique> <Leader>[ :NERDTreeToggle<CR>
map <unique> <Leader>] :TlistToggle<CR>

if exists(":let")
    " Make sure NERDTree always opens with the right dimensions
    let NERDTreeQuitOnOpen = 1
    let NERDTreeWinSize = 30
endif

" Save folding status automatically
if has("autocmd")
    autocmd BufWinLeave ?* silent mkview
    autocmd BufWinEnter ?* silent loadview
endif

filetype plugin on
set ofu=syntaxcomplete#Complete

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Tabb for omnicompletion
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

map <C-F6> :ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"http://vim.wikia.com/wiki/In_line_copy_and_paste_to_system_clipbo
"ard
"sudo apt-get install xclip
"vmap <C-c> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

