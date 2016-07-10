
" ===                               PLUGINS                                === "
" ============================================================================ "

" Set up Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle list
Bundle 'gmarik/vundle'

" Installed plugins
Bundle 'corntrace/bufexplorer'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'tobyS/pdv'
Bundle 'SirVer/ultisnips'
Bundle 'tobyS/vmustache'
Bundle 'airblade/vim-gitgutter'
Bundle 'evidens/vim-twig'
Bundle 'Townk/vim-autoclose'
Bundle 'edkolev/tmuxline.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle "pangloss/vim-javascript"
Bundle "tpope/vim-surround"
Bundle "vim-scripts/tcomment"
Bundle "geoffharcourt/vim-matchit"
Bundle "xenoterracide/html.vim"
Bundle "Valloric/YouCompleteMe"
Bundle "Chiel92/vim-autoformat"
Bundle "Yggdroot/indentLine"
Bundle "mileszs/ack.vim"
Bundle "dbext.vim"

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "
" let mapleader=","               " remap leader key to ,

filetype indent on
filetype plugin on              " Enable matching pairs for match-it
set backspace=indent,eol,start  " Backspace works as it damn well should!
" set clipboard=unnamed           " yank and paste with the system clipboard
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
set noswapfile
set number                      " Line Numbers
set ruler 
set shiftwidth=4                " Tabs as 4 spaceso
set smartindent
set smarttab
set tabstop=4
set showcmd
set showmatch
set smartcase                   " if the search string has an upper case letter in it, the search will be case sensitive
set softtabstop=4               " Tabs as 4 spaces
set title 
set autoread
set clipboard=unnamedplus
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>")"))

" Autoformat
" autocmd BufRead,BufWritePre *.* normal gg=G
" au BufWrite * :Autoformat
noremap <F4> :Autoformat<CR>
let g:autoformat_verbosemode = 1
let g:formatdef_jsbeautify_javascript = '"js-beautify --config /home/alex/git/coach-tools-app/.jsbeautifyrc"'

" set mouse=a
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
end

" ============================================================================ "
" ===                                COLORS                                === "
" ============================================================================ "
set background=dark
syntax enable                   " Syntax highlighting and colors
" :color delek

set t_Co=256 
" let g:rehas256=1 

" colorscheme molokai
" let g:molokai_termcolors=256 " enable for molokai
" let g:molokai_original=1 " molokai specific

" colorscheme onedark
" let g:onedark_termcolors=256 " enable for molokai
" let g:onedark_original=1 " molokai specific

" hybrid color scheme
" colorscheme solarized-alex
" colorscheme hybrid
" colorscheme atom
" colorschemes that work:
" colorscheme mustang
colorscheme muon
" colorscheme molokai
" colorscheme monokai
" colorscheme holokai
" colorscheme hybrid
" colorscheme onedark
" colorscheme harlequin
" colorscheme miko
" colorscheme nature
" colorscheme mango
" colorscheme nazca
" colorscheme maroloccio
" colorscheme monokai-chris
" colorscheme newsprint
" colorscheme obsidian
" colorscheme atom
" colorscheme kafka
" colorscheme up
" colorscheme Tomorrow-Night
" colorscheme wombat256mod
" colorscheme zenburn
" colorscheme flatcolor
" colorscheme bubblegum

" Yggdroot/indentLine color
" https://lh3.googleusercontent.com/-JBl1Qa6UoBo/USXe5Wzw5uI/AAAAAAAAEeI/f0tyZjXBiyw/s800/2013-02-21--15%253A03%253A58.png
let g:indentLine_color_term=237

" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "
" After writing to any .vimrc, source that file
au! BufWritePost .vimrc so %

" Possible fix for fugitive conflict with CtrlP
au BufReadPost fugitive://* set bufhidden=delete

set encoding=utf-8
set wildmenu " Autocomplete in menu will list all available options that match
set wildmode=list:longest " allow for tab completion in the command line

autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.go set makeprg=go\ build\ %
autocmd BufRead,BufNewFile *.gradle set filetype=groovy

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
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

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
" https://github.com/vim-airline/vim-airline-themes
" let g:airline_theme='wombat'
let g:airline_theme='solarized'

let g:bufferline_echo = 0
set noshowmode

" let g:NERDTreeWinPos="left"
let g:NERDTreeHighlightCursorline="true"
set splitright

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" NERDTree mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>



execute pathogen#infect()
call pathogen#infect()

" Easy Motion mappings
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>a <Plug>(easymotion-anywhere)


let g:dbext_default_profile_local="type=MYSQL:extra=--defaults-file=/home/alex/.my.cnf -t"
let g:dbext_default_profile_test="type=MYSQL:host=50.116.20.188:extra=-t"
let g:dbext_default_profile_prod="type=MYSQL:host=50.116.31.236:extra=-t"
let g:dbext_default_profile_test_external_info_sources="type=MYSQL:host=50.116.20.188:dbname=external_info_sources"
