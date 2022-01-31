set number
set mouse=a
set cursorline
set numberwidth=1
syntax enable
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode
set splitright
set t_Co=256
syntax on

" Install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"-----------------------------------------

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'


" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter' " cc coment selected | cs comment line | cu delete comment

" File and variable searcher
Plug 'junegunn/fzf', { 'do': {-> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release' }
Plug 'scrooloose/nerdtree'

" Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' " ysiw + ( (or other to arround)
Plug 'sirver/ultisnips'

" Searcher 
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/NrrwRgn'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'

" Navigator
Plug 'christoomey/vim-tmux-navigator'

" Colors
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'skammer/vim-css-color'


call plug#end()

" Setting the theme
colorscheme gruvbox


let g:coc_global_extensions = [ 'coc-tsserver' ]

if (has("termguicolors"))
 set termguicolors
endif
let NERDTreeQuitOnOpen=1

let mapleader=" "


set runtimepath^=~/.vim/plugged/bundle/ctrlp.vim

let g:user_emmet_leader_key=','
let g:cssColorVimDoNotMessMyUpdatetime = 1

let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}

let g:NERDCreateDefaultMappings = 1


nmap <Leader>xs :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

" Resizing windows
nmap <Leader>1 :vertical resize +5<CR>
nmap <Leader>2 :vertical resize -5<CR>
nmap <Leader>3 :resize +5<CR>
nmap <Leader>4 :resize -5<CR>

" Working with tabs
nmap <Leader>r :tabnew<CR>
nmap <Leader>fr :tabclose<CR>
nmap <Leader>re gT
nmap <Leader>rt gt

" Adding more files to the actual window
" Duplicate vertically
nmap <Leader>v :sp<CR>
" Duplicate horizontally
nmap <Leader>h :vs<CR>

" Tagbar
nmap <Leader>tt :! ctags -R %<CR> 
nmap <Leader>t :TagbarToggle<CR> <C-l>

" Modify a portion of the text in other window
nmap <Leader>k :NR <CR>:resize +10 <CR>

nmap <leader>0 <Plug>(coc-format-selected)
nmap <leader>0 <Plug>(coc-format-selected)

" Copy paste between terminals in specific machines
vmap <Leader>y :w! /tmp/vitmp<CR>
nmap <Leader>u :r! cat /tmp/vitmp<CR>

" fzf
nmap <Leader>f :Files <CR> 




nmap <Leader>p :CocCommand prettier.formatFile<CR>
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]
endfunction

inoremap <silent><expr> <Insert>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Specific autocomplete
inoremap " ""<left>
inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap prt print()<left>
inoremap clg console.log()<left>
inoremap reqp   = require('')<left>
inoremap imr  import React from 'react'<left>

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
