"===================================================================
" Basic settings
"===================================================================
"
"pathogen config
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"set encoding
set encoding=utf-8
"256 colors
set t_Co=256
"colorscheme
colorscheme lucius
"vim extended mode
set nocompatible
"enable line numbers
set number
"enable relative numbers
setglobal relativenumber
setlocal relativenumber
"enable mouse compatibity
set mouse=a
"no beep or flash for errors
set noerrorbells
"command history length
set history=1000
"autoindent
set autoindent
"number of spaces for autoindentation
set shiftwidth=4
"insert space characters instead of tabs >> Moodle Coding Guidelines
"set expandtab
"number of spaces for tab
set tabstop=4
"make backspace work normally
set backspace=indent,eol,start
"max tab number
set tabpagemax=15
"set font
set guifont=Ubuntu\ Mono\ 12
"set guifont=Monospace\ 13
"set guifont=Droid\ Sans\ Mono\ 13
"statusline
set laststatus=2
"statusline: filepath, filetype, mod, rw, help, preview,   
set statusline=%f\ %y\ %{fugitive#statusline()}\ %m%r%h%w
"statusline: separation between lef and right aligned items
set statusline+=%=
"statusline: lines number, column number, percent
set statusline+=[L:\ %l/%L]\ [C:\ %v]\ [%p%%]
"set all but toolbar
set guioptions=aegit 
"set right mouse click to popup
set mousemodel=popup
"enable filetype detection
filetype on
"enable filetype plugins
filetype plugin on
"enable syntax highlight
syntax on
"no backup files
set nobackup
"tags
set tags=tags;/

"===================================================================
" Autocommands
"===================================================================
"filetype list extension
autocmd BufEnter * :syntax sync fromstart
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.hx set filetype=actionscript
autocmd BufRead *.mxml set filetype=actionscript
autocmd BufRead *.rb set filetype=ruby
autocmd BufRead *.fish set filetype=fish
autocmd BufRead mutt-ator-mail* set filetype=html

"===================================================================
" Mappings 
"===================================================================
"remap leader
"let mapleader = ","
"navigate splits
"map <C-S-J> <C-w>j<C-w><ESC>
"map <C-S-K> <C-w>k<C-w><ESC>
"map <C-S-L> <C-w>l<C-w><ESC>
"map <C-S-H> <C-w>h<C-w><ESC>

"save
map <C-s> :wa<CR>
imap <C-s> <ESC>:wa<CR>li

"switch to next buffer
map <C-j> :bn<CR>

"switch to previous buffer
map <C-k> :bp<CR>

"list buffers
map <leader>i :ls<CR>

"close
map <C-q> :q<CR>
imap <C-q> <ESC>:q<CR>

"tab navigation 
map  <C-Tab> :tabnext <CR>
imap <C-Tab> <ESC> :tabnext <CR>

map  <C-S-Tab> :tabprevious <CR>
imap <C-S-Tab> <ESC> :tabprevious <CR>


"filetype to html
noremap <leader>h <Esc>:set filetype=html<CR>

"cut
"map <C-S-x> "*x
"imap <C-S-x> <ESC>"*x

"copy
"map <C-S-c> "*y
"imap <C-S-c> <ESC>"*y

"paste
"map <C-S-v> "+p
"imap <C-S-v> <ESC>"+p

"===================================================================
" Abbreviations
"===================================================================
"xml
ab xmlver <?xml version="1.0" encoding="utf-8"?>
ab xmlnsp xmlns:mx="http://www.adobe.com/2006/mxml"
ab xmlcmt <!-- --><ESC>3hi
ab cdata  <![CDATA[ ]]><ESC>3hi
"ruby
ab rubsub <%= %><ESC>2hi
ab rubins <% %><ESC>2hi
ab rubli  <%= link_to "", :action => "" %><ESC>3F"
"php
ab phpins <?php ?><ESC>2hi
ab vdump var_dump();<ESC>i
ab prir print_r();<ESC>i
"html
ab clspan <span style="clear:both; display:block"><!--  --></span>
"bash
ab shabang #!/bin/bash
"javascript
ab conlog console.log();<ESC>h
ab mlog MoodleMobApp.log();<ESC>h
ab llog // -log-

"===================================================================
" Plugin tweaks
"===================================================================

" Latex
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor = "latex"
"let g:Tex_DefaultTargetFormat = "pdf"
"set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

"xhtml plugin tweaks
let g:do_xhtml_mappings=1
let g:no_html_tab_mapping=1
let g:no_html_toolbar=1

"vimperator view source fix
let g:netrw_http_cmd = "wget -q -O"

"tagbar config
nmap <F8> :TagbarToggle<CR>

"zen coding config
"let g:user_zen_expandabbr_key = '<c-e>'
"let g:use_zen_complete_tag = 1

"CtrlP
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>F :CtrlPCurWD<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>l :CtrlPLine<CR>
