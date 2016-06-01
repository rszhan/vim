set nocompatible
set rtp+=$HOME/.vim/bundle/vundle
let path='$HOME/.vim/bundle'
call vundle#rc('$HOME/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Bundle 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Automatically open NERDTree commented out
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

imap <S-Space> <Esc>