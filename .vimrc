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

" Temporary settings



"" Personal configuration
" faster open .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H> 
autocmd FileType python nnoremap <buffer> <C-/>  I#<esc>
autocmd FileType c* nnoremap <buffer> <leader>z  I//<esc>

autocmd FileType python     :iabbrev <buffer> iff if:<left>


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

set rtp +=~/.vim
" Installing plug! Please run :PlugInstall to install.
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'yegappan/taglist'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" ##########################################
" Configure these Plug
" ##########################################

" nerdtress
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=70

" snippet
let g:UltiSnipsSnippetDirectories=["mysnippets"]

" YouCompleteMe

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_config/C_plus/.ycm_extra_conf.py'
" let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path=exepath("python")
let g:ycm_clangd_binary_path=exepath("clangd")
let g:ycm_cache_omnifunc=0
let g:ycm_collect_identifiers_from_tags_files=1 
let g:ycm_min_num_of_chars_for_completion=1 
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1  
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:ycm_show_diagnostics_ui = 0
" let g:ycm_error_symbol = '>>'  
" let g:ycm_warning_symbol = '>'  

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
nnoremap <leader>r :YcmCompleter GoToReferences<CR>
let g:ycm_goto_buffer_command = 'vertical-split'

" set ptag
set tags+=tags

" color set
set background=dark
colorscheme solarized

" cscope
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        " else add database pointed to by environment
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
        set csverb
endif

noremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>

" taglist setting
let Tlist_Show_One_File=1     
let Tlist_Exit_OnlyWindow=1     
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_WinWidth=70
nnoremap <F2> :Tlist<CR><C-W><C-H> 



