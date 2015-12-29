call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Bundle list
Plug 'gmarik/vundle'

" Installed plugins
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'amix/vim-zenroom2' " iA Writer lookalike
Plug 'bling/vim-airline' " Add some bling to your status/tabline.
Plug 'burnettk/vim-angular' 
Plug 'corntrace/bufexplorer'
Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'evidens/vim-twig'
Plug 'fatih/vim-go'
Plug 'geoffharcourt/vim-matchit'
Plug 'groenewege/vim-less'
Plug 'jelera/vim-javascript-syntax'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/goyo.vim' " Distraction free writing in vim
Plug 'junegunn/limelight.vim' " Nice theme to use with goyo.vim
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'matthewsimo/angular-vim-snippets'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim' " Vim plugin for the_silver_searcher (ag)
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/snipmate-snippets'
Plug 'scrooloose/syntastic'
Plug 'shawncplus/phpcomplete.vim'
Plug 'SirVer/ultisnips'
Plug 'slim-template/vim-slim.git'
Plug 'therubymug/vim-pyte' " light theme
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/mayansmoke'
Plug 'vim-scripts/peaksea'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/tcomment'
Plug 'wesgibbs/vim-irblack'
Plug 'xenoterracide/html.vim'
Plug 'yegappan/mru'

" Add plugins to &runtimepath
call plug#end()


" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "
" let mapleader=","               " remap leader key to ,

filetype indent on
filetype plugin on              " Enable matching pairs for match-it
set backspace=indent,eol,start  " Backspace works as it damn well should!
set clipboard=unnamed           " yank and paste with the system clipboard
set cursorline
set expandtab                   " Tabs as 4 spaces
set foldenable                  " enable folding
set foldlevel=1                 " Manual line folding
set foldlevelstart=10           " open most folds by default
set foldmethod=indent           " fold based on indent level
set foldmethod=manual           " Manual line folding
set foldnestmax=10              " 10 nested fold max
set hidden                      " Hides buffers instead of closing them
set hlsearch                    " highligh search matches
set ignorecase                  " ignore case when searching
set incsearch                   " search as characters are entered
set laststatus=2 
set lazyredraw                  " tells vim to not redraw during times when not needed, like macros. Enables faster macros.
set nolist
set nowrap                      " do not wrap long lines by default
set number                      " Line Numbers
set ruler 
set shiftwidth=4                " Tabs as 4 spaces
set showcmd
set showmatch
set smartcase                   " if the search string has an upper case letter in it, the search will be case sensitive
set softtabstop=4               " Tabs as 4 spaces
set title 
set mouse=a
syntax enable                   " Syntax highlighting and colors


" ============================================================================ "
" ===                                COLORS                                === "
" ============================================================================ "
syntax enable
" :let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" :color delek
set t_Co=256 " needs to be turned on for molokai
let g:molokai_termcolors=256 " enable for molokai
let g:molokai_original=1 " molokai specific
"let g:rehas256=1 " molokai specific
" colorscheme molokai


" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "
" After writing to any .vimrc, source that file
au! BufWritePost .vimrc so %

" Possible fix for fugitive conflict with CtrlP
au BufReadPost fugitive://* set bufhidden=delete

" set encoding=utf-8
set wildmenu " Autocomplete in menu will list all available options that match
set wildmode=list:longest " allow for tab completion in the command line

autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.go set makeprg=go\ build\ %


" Method to clear buffer history for large projects/files
function! ClearHiddenRO()
    let i = 1
    while i <= bufnr('$')
        if buflisted(i)
            if (getbufvar(i, '&readonly') && (bufwinnr(i) == -1)) || !bufloaded(i)
                exe "bdel!" i
            endif
        endif
        let i += 1
    endwhile
endfunc
map <leader>q call ClearHiddenRO()


" Enable vim-airline
let g:airline#extensions#tabline#enabled = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" enable modified detection
  let g:airline_detect_modified=1

" enable paste detection
  let g:airline_detect_paste=1

" enable crypt detection
  let g:airline_detect_crypt=1

" enable iminsert detection
  let g:airline_detect_iminsert=0 

" determine whether inactive windows should have the left section collapsed to only the filename of that buffer. 
  let g:airline_inactive_collapse=1

" themes are automatically selected based on the matching colorscheme. this can be overridden by defining a value.
let g:airline_theme='wombat'

let g:bufferline_echo = 0
set noshowmode