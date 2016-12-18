" Start Plug.vim/Setup
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/deoplete-typescript'
Plug 'neomake/neomake'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'slashmili/alchemist.vim'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'

" Syntax Helpers
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'othree/html5.vim'
Plug 'JulesWang/css.vim'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'

" Color Schemes
Plug 'nanotech/jellybeans.vim'

" Wrap
call plug#end()

" General Settings
set directory=~/.vim/tmp
set t_Co=256
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set background=dark
set laststatus=2

set relativenumber
set number
set swapfile
colorscheme jellybeans

let g:netrw_liststyle=3
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1
let g:deoplete#enable_at_startup = 1
let g:neomake_warning_sign = { 'text': '!', 'texthl': 'WarnMsg' }
let g:neomake_airline = 2

" Kickoff
filetype plugin indent on
autocmd VimResized * wincmd =
autocmd BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile,BufWritePost * Neomake
