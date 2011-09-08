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
"vim extended mode
set nocompatible
"enable line numbers
set number
"enable relative numbers
set relativenumber
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
set guifont=Terminus\ 11
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
set guioptions=aegimrLt 
"set right mouse click to popup
set mousemodel=popup
"nice colortheme
colorscheme lucius
"enable filetype detection
filetype on
"enable filetype plugins
filetype plugin on
"enable syntax highlight
syntax on
"no backup files
set nobackup

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

"===================================================================
" Mappings 
"===================================================================
"remap leader
"let mapleader = ","
"save
map <C-s> :wa<CR>
imap <C-s> <ESC>:wa<CR>li

"open new tab
map <A-o> :browse tabnew<CR>
imap <A-o> <ESC>:browse tabnew<CR>i

"switch to next buffer
map <A-Right> :bn<CR>
map <A-j> :bn<CR>

"switch to previous buffer
map <A-Left> :bp<CR>
map <A-k> :bp<CR>

"list buffers
map <A-Down> :ls<CR>
map <A-i> :ls<CR>

"close
map <C-q> :q<CR>
imap <C-q> <ESC>:q<CR>

"tab navigation 
map  <C-Tab> :tabnext <CR>
imap <C-Tab> <ESC> :tabnext <CR>

map  <C-S-Tab> :tabprevious <CR>
imap <C-S-Tab> <ESC> :tabprevious <CR>

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
ab vdump var_dump( );<ESC>2hi
ab clspan <span style="clear:both; display:block"><!--  --></span>
"bash
ab shabang #!/bin/bash

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

"command-t config
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

"zen coding config
"let g:user_zen_expandabbr_key = '<c-e>'
"let g:use_zen_complete_tag = 1

"supertab omnicompletion
let g:SuperTabDefaultCompletionType = "context"
