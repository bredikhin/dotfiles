" <NeoBundle Scripts>
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'henrik/vim-indexed-search'
NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Raimondi/delimitMate'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" </NeoBundle Scripts>

" <Plugin Options>
" <scrooloose/nerdtree>
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" </scrooloose/nerdtree>

" <bling/vim-airline>
" Always show statusbar
set laststatus=2

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" </bling/vim-airline>

" <kien/ctrlp.vim>
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
" </kien/ctrlp.vim>

" <scrooloose/syntastic>
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" </scrooloose/syntastic>

" <nanotech/jellybeans.vim>
colorscheme jellybeans
" </nanotech/jellybeans.vim>
" </Plugin Options>

" <Non-plugin Stuff>
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set hidden
set history=100

syntax on

" Remember the last position in a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" </Non-plugin Stuff>
