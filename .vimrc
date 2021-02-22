set number
syntax on
set tabstop=4
set encoding=utf-8

" Make it so I can use backspace from insert
set backspace=indent,eol,start

" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Call for plugins
call plug#begin('~/.vim/plugged')

" Install plugins here

" File tree for vim
Plug 'preservim/nerdtree'

" git plugin for vim
Plug 'tpope/vim-fugitive'

" C# Plugin for autocomplete (may need to run :OmniSharpInstall )
Plug 'OmniSharp/omnisharp-vim'

" Python autocomplete Plugin
Plug 'davidhalter/jedi-vim'

call plug#end()
