colorscheme codedark
set number relativenumber   " line numbers
set wrap linebreak          " proper line wrap
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

" ------ KEYMAPS ------

" quick quit
nnoremap q :q<CR>

" quick save
nnoremap <C-s> :w<CR>

" toggle wrap
nnoremap <A-w> :set wrap!<CR>

" switch tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>  

" NERDTree
nnoremap b :NERDTreeToggle<CR>

" ------ Plugins ------
call plug#begin()                   
    Plug 'tomasiser/vim-code-dark'      " Colorscheme
    Plug 'scrooloose/nerdtree'          " NERDTree as file manager
    Plug 'preservim/nerdcommenter'      " Comments shortcut
call plug#end()

" ------ Plugins/NERDTree ------

let NERDTreeShowHidden=1

" ------ Plugins/NERDCommenter ------

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" ------ Misc ------

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Syntax highlighting in markdown code fences
let g:markdown_fenced_languages = ['bash=sh', 'javascript', 'js=javascript', 'json=javascript', 'typescript', 'ts=typescript', 'php', 'html', 'css']
