" https://junegunn.github.io/vim-plug/tips/automatic-installation/
" Automatically install vim-plug and the plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ------------------------------------------------------------
" Load plugins
" ------------------------------------------------------------
call plug#begin()

Plug 'gruvbox-community/gruvbox'
    let g:gruvbox_contrast_dark = 'hard'
    let g:gruvbox_guisp_fallback = 'bg'  " This is necessary for spell check to work with Gruvbox
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
    let g:AutoPairsShortcutToggle = '<C-P>' " Toggle Auto Pairs with Crrl+P
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
    let g:goyo_width = 50                   " Set width to 50 (default is 80)

call plug#end()

" https://github.com/danebulat/vim-config/tree/master/light-ide
" ------------------------------------------------------------
" Vim configuration
" ------------------------------------------------------------

set nu                  " Enable line numbers
syntax on               " Enable synax highlighting
set incsearch           " Enable incremental search
set hlsearch            " Enable highlight search
set termwinsize=12x0    " Set terminal size
set splitbelow          " Always split below
set mouse=a             " Enable mouse drag on window splits
set tabstop=4           " How many columns of whitespace a \t is worth
set shiftwidth=4        " How many columns of whitespace a “level of indentation” is worth
set expandtab           " Use spaces when tabbing

set background=dark     " Set background
colorscheme gruvbox     " Set color scheme

" https://www.vimfromscratch.com/articles/spell-and-grammar-vim
autocmd FileType markdown,text setlocal spell spelllang=de
set spellcapcheck=      " Disable check for capitalization at beginning of sentence
