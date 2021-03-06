set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required! 
Bundle 'gmarik/vundle'

" repos on github
Bundle 'L9'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'motemen/git-vim'
"Bundle 'mhz/html5.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree.git'
"Bundle 'scrooloose/snipmate-snippets'
"Bundle 'robhudson/snipmate_for_django'
"Bundle 'msanders/snipmate.vim'
"Bundle 'vim-scripts/svndiff'
Bundle 'vim-scripts/taglist.vim'
Bundle 'skyl/vim-config-python-ide'
"Bundle 'mhz/vim-matchit'
Bundle 'cschlueter/vim-wombat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
"Bundle 'skammer/vim-css-color'
"Bundle 'gmarik/vim-markdown'
"Bundle 'greyblake/vim-preview'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/typofree.vim'
"Bundle 'vim-scripts/ShowMarks'
"Bundle 'vim-scripts/number-marks'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/Obvious-Mode'
"Bundle 'vim-scripts/css_color.vim'
"Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'ervandew/supertab'
Bundle 'superjudge/tasklist-pathogen'
"Bundle 'drmingdrmer/xptemplate'
"Bundle 'vim-scripts/UltiSnips'
Bundle 'SirVer/ultisnips'
"Bundle 'rygwdn/ultisnips'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jnurmine/Zenburn'
"Bundle 'ir_black'
Bundle 'vim-scripts/AutoTag'
Bundle 'vim-scripts/php.vim-html-enhanced'
Bundle 'vim-scripts/php.vim--Garvin'
Bundle 'mru.vim'
"Bundle 'tomtom/tlib_vim'
"Bundle 'tomtom/viki_vim'
Bundle 'vim-scripts/vimwiki'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'vim-scripts/buftabs'
Bundle 'jgdavey/tslime.vim'
Bundle 'nathanaelkane/vim-indent-guides'

"Bundle 'vimoutliner/vimoutliner'
"Bundle 'xolox/vim-notes'
"Bundle 'vim-scripts/Note-Maker'
"Bundle 'mivok/vimtodo'
Bundle 'kchmck/vim-coffee-script'

"Bundle 'rstacruz/sparkup'
Bundle 'tristen/vim-sparkup'
Bundle 'kien/ctrlp.vim'

Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'myusuf3/numbers.vim'
Bundle 'AndrewRadev/switch.vim'
Bundle 'chriskempson/base16-vim'

Bundle 'airblade/vim-gitgutter'
Bundle 'ap/vim-css-color'
Bundle 'tpope/vim-sleuth'


filetype plugin indent on     " required! 
" :BundleInstall  - install bundles (won't update installed)
" :BundleInstall! - update if installed
"
" :Bundles foo    - search for foo
" :Bundles! foo   - refresh cached list and search for foo
"
" :BundleClean    - confirm removal of unused bundles
" :BundleClean!   - remove without confirmation
"
" see :h vundle for more details
" or wiki for FAQ
" Note: comments after Bundle command are not allowed..
