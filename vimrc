" disabling compat mode
set nocompatible
filetype off

" setup color scheme
colorscheme wombat256mod

" whitespace
set list
set listchars=trail:·,tab:»·

" local vimrc
set exrc
set secure

" do not upload the buffer
set hidden

" enabling line numbers
set number
" highlight LineNr ctermfg=Yellow

" enabling cursorline
set cursorline

" enabling statusline
set laststatus=2

" set TAB space
set tabstop=4
set softtabstop=4
set shiftwidth=4 "An indent is 4 spaces
set smarttab "Indent instead of tab at start of line
set shiftround "Round spaces to nearest shiftwidth multiple
set nojoinspaces "Don't convert spaces to tabs
set expandtab "set TAB to SPACE conversion

" user map
map <C-c> :bd<CR>
map <C-n> :bn<CR>
map <C-p> :bp<CR>
" map gd :YcmCompleter GoToDeclaration<CR>

" enable vundle >>>
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplete'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on
syntax enable
" end plugins <<<

" airline customize
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#fugitive#enable = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline_left_sep = '['
" let g:airline_right_sep = ']'
" let g:airline_enable_bufferline = 1

" syntactic customize
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1

let g:syntastic_python_python_exec = '/usr/bin/python3'

let g:syntastic_rust_checkers = ["rustc"]

" ycm costomize
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1

let g:clang_use_library = 1
let g:clang_auto_select = 0
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_complete_macros = 1
let g:clang_complete_patters = 1

" rust-lang costomize
" let g:rustc_path = "/usr/local/bin/rustc"
let g:ycm_rust_src_path = "/usr/local/rust/src"

" arduino syntax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
