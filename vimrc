" Custom configuration

set number
set splitright
set tabstop=4
set laststatus=2
set t_Co=256

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
set guicursor=i:ver100-iCursor


" nerdtree config
let NERDTreeShowHidden=1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusConcealBrackets = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusGitBinPath ='/mingw64/bin/git'


" airline config

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='dark'
let g:airline_section_a = '%{hostname()}'
"let g:airline_section_b = '%{strftime("%b,%d %y %H:%M:%S")}' "set to default
"section_b as (hunks, branch)
let g:airline_section_c = '%{getcwd()}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_left_sep='▶'
let g:airline_right_sep='◀'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#hunks#non_zero_only=0
let g:airline#extensions#hunks#hunk_symbols=['+', '~', '-']
let g:airline_symbols.branch = '⎇'

let g:git_messenger_git_command='/mingw64/bin/git'

" vim-plug

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'


Plug 'rhysd/git-messenger.vim'

" Vim Plugin for themes "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

Plug 'zivyangll/git-blame.vim'

Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-lawrencium'


call plug#end()
