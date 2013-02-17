set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
filetype plugin on
syntax on

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-endwise'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'mattn/zencoding-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'vim-scripts/taglist.vim'


let g:indent_guides_guide_size = 1
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 50
let g:fuf_coveragefile_prompt = '=>'
let g:Powerline_symbols = 'unicode'
let Tlist_Show_Menu=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noimdisable
set iminsert=0
set imsearch=0
set noswapfile
set laststatus=2
set t_Co=256
set cindent
set autoindent
set wildmenu
set hidden
set incsearch

map <silent><F8> :NERDTree<CR>
"map <tab> :tabn<CR>
map <s-tab> :bp<cr>
map <tab> :bn<cr>
map ,bd :bd<cr>
map ,, :FufCoverageFile!<CR>
map ,v :w<cr>
imap jj <esc>
imap JJ <esc>
"hightlight col and line
"set cursorline

"""""""""""""""""""""""""""""""""""""
"       Zen-coding
"   
"""""""""""""""""""""""""""""""""""""
let g:user_zen_expandabbr_key = '<c-e>'    "设置为ctrl+e展开
let g:use_zen_complete_tag = 1
let g:uer_zen_settings = {
  \  'lang' : 'ja',
  \  'html' : {
  \    'filters' : 'html',
  \    'indentation' : ' '
  \  },
  \  'perl' : {
  \    'indentation' : '  ',
  \    'aliases' : {
  \      'req' : "require '|'"
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'w' : "warn \"${cursor}\";",
  \    },
  \  },
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'html,c',
  \  },
  \  'css' : {
  \    'filters' : 'fc',
  \  },
  \  'javascript' : {
  \    'snippets' : {
  \      'jq' : "$(function() {\n\t${cursor}${child}\n});",
  \      'jq:each' : "$.each(arr, function(index, item)\n\t${child}\n});",
  \      'fn' : "(function() {\n\t${cursor}\n})();",
  \      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100);",
  \    },
  \  },
  \ 'java' : {
  \  'indentation' : '    ',
  \  'snippets' : {
  \   'main': "public static void main(String[] args) {\n\t|\n}",
  \   'println': "System.out.println(\"|\");",
  \   'class': "public class | {\n}\n",
  \  },
  \ },
  \} 
