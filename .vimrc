set nocompatible

" filetype on
filetype off 		       " required for vundle (see gmarik/vundle)

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Fancyness
Bundle 'bling/vim-airline'
 
" FileManagement
Bundle 'scrooloose/nerdtree'

" Formatting
Bundle 'junegunn/vim-easy-align'

syntax on                      " enable syntax highlighting
set number                     " show line numbers
set visualbell                 " no beeps please!
set encoding=utf-8             " utf-8 ftw!
set fileencoding=utf-8
let mapleader = ","            " nobody likes \ as leader!
set hlsearch                   " Search highlighting
set incsearch                  " Highlight as you type
set ignorecase
set smartcase

" Write and quit
command! Wsudo :w !sudo tee %
command! WQ wq
command! Wq wq
command! W w
command! Q q
command! Qa qa
command! QA qa
command! Wqa wqa
command! WQa wqa
command! WQA wqa

" Reformat XML
command! FormatXml %!xmllint --format -

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Hightlight current line in gui
" set cursorline

" Airline
set laststatus=2
set noshowmode
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_detect_modified=0
let g:airline_section_z = '%l:%c %p%%'
let g:airline#extensions#branch#enabled = 1

if $PRESENTATION_MODE == 1
  let g:airline_theme='solarized'
else
  let g:airline_theme='powerlineish'
  let g:airline_theme_patch_func = 'AirlineThemePatch'
  function! AirlineThemePatch(palette)
    if g:airline_theme == 'powerlineish'
      let a:palette.normal.airline_x[1] = '#404040'
      let a:palette.normal.airline_x[3] = 236
      let a:palette.normal.airline_b[1] = '#505050'
      let a:palette.normal.airline_b[3] = 238
      let a:palette.normal.airline_c[1] = '#404040'
      let a:palette.normal.airline_c[3] = 236
      let a:palette.normal.airline_y[1] = '#505050'
      let a:palette.normal.airline_y[3] = 238
      if type(get(a:palette.normal, 'airline_file')) == type([])
        let a:palette.normal.airline_file[1] = '#404040'
        let a:palette.normal.airline_file[3] = 236
      endif
    endif
  endfunction
endif
