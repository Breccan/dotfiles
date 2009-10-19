filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf  " Enable error files & error jumping. 
set clipboard+=unnamed  " Yanks go on clipboard instead. 
set history=256  " Number of things to remember in history. 
set autowrite  " Writes on make/shell commands 
set ruler  " Ruler on 
set nu  " Line numbers on 
set nowrap  " Line wrapping off 
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay
set t_Co=256 
colorscheme vividchalk 

" Formatting (some of these are for coding in C and C++) 
set ts=2  " Tabs are 2 spaces 
set bs=2  " Backspace over everything in insert mode 
set shiftwidth=2  " Tabs under smart indent 
set nocp incsearch 
set cinoptions=:0,p0,t0 
set cinwords=if,else,while,do,for,switch,case 
set formatoptions=tcqr 
set cindent 
set autoindent 
set smarttab 
set expandtab 
filetype indent on
filetype plugin indent on

" Visual 
set showmatch  " Show matching brackets. 
set mat=5  " Bracket blinking. 
set novisualbell  " No blinking . 
set noerrorbells  " No noise. 
set laststatus=2  " Always show status line. 

" gvim specific 
set mousehide  " Hide mouse after chars typed 
set mouse=a  " Mouse in all modes

"Keymappings
:map , :FuzzyFinderFile<CR>
:map gc :Rcontroller<CR> 
:map gm :Rmodel<CR> 
:map gv :Rview<CR> 
:map gl :Rlayout<CR>
:map gs :Rspec<CR>
:map gw :Rfind<Space>
:map gec :Rcontroller<Space>
:map gem :Rmodel<Space>
:map gev :Rview<Space>
:map gel :Rlayout<Space>
:map ges :Rspec<Space>
:nmap H 0
:nmap L $
:map <F2> :Rproject<CR>

