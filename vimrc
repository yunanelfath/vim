" Custom configuration

set number
set splitright
set tabstop=4
set laststatus=2
set t_Co=256
set hlsearch


set cursorline
hi CursorLine ctermbg=235


" ctrl find file path ctrlp-vim config
set shell=/bin/bash
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'





" nerdtree config
let NERDTreeShowHidden=1
"let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusConcealBrackets = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {'Modified'  :'✹', 'Staged'    :'✚','Untracked' :'✭','Renamed'   :'➜','Unmerged'  :'═', 'Deleted'   :'✖','Dirty'     :'✗','Ignored'   :'☒','Clean'     :'✔︎','Unknown'   :'?',}
" let g:NERDTreeGitStatusGitBinPath ='/mingw64/bin/git' "it for windows
let g:NERDTreeGitStatusGitBinPath='/usr/bin/git' "it fow linux
nnoremap <F11> :NERDTreeToggle<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>


let metadata = system('ls -lah ')


" airline config

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='dark'
let g:airline_section_a = '%{hostname()}'
"let g:airline_section_b = '%{strftime("%b,%d %y %H:%M:%S")}' "set to default
"section_b as (hunks, branch)
let g:airline_section_c = '%{expand("%:p")}'
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




" Shortcut
nnoremap ,<space> :nohlsearch<CR>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F1> :tabn<CR>
nnoremap <F2> :tabp<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap B :Git blame<CR>
nnoremap q :q<CR>


" vim-plug

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

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

"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

Plug 'kien/ctrlp.vim'

call plug#end()


