" The following is some base item about vim editer
set nocompatible
syntax on
filetype plugin indent on
set ic
set hlsearch
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5
set cursorline
set autoindent
set smartindent
set scrolloff=4
set showmatch
set nu




" Some shortcut define
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Some setting about python
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

" Installing plug! Please run :PlugInstall to install.
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'kien/rainbow_parentheses.vim' 
Plug 'ervandew/supertab'
Plug 'rdnetto/YCM-Generator',{'branch':'stable'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" ##########################################
" Configure these Plug
" ##########################################

" nerdtress
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" rainbow
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" snippet
let g:UltiSnipsSnippetDirectories=["mysnippets"]

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" make jump to definition using ycm
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_goto_buffer_command = 'vertical-split'

" set ptag
set tags+=tags


