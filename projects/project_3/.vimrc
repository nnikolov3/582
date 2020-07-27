" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

set softtabstop=4
set shiftwidth=4 
set expandtab
syntax on
set backspace=indent,eol,start

autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab
" show the editing mode on the last line
set showmode

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=~/.backup

" tell vim where to put swap files
set dir=~/.swp

set autoindent

" you can show line numbers
set number

" highlight matching search strings
set hlsearch

" make searches case insensitive
set ignorecase

set cmdheight=2

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a

set ignorecase
set smartcase

set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
set autowriteall
 
" Better command-line completion
set wildmenu
set showmatch
set incsearch
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent
nnoremap j gj
nnoremap k gk

set ttyfast

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>
set formatoptions=tcqrn1


" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
