set nocompatible              " be iMproved, require2
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"Plugins
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plugin 'preservim/tagbar'
Plugin 'soramugi/auto-ctags.vim' " Requires the ctags utility
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'powerline/powerline'
Plugin 'skywind3000/vim-terminal-help'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call vundle#end()            " required
filetype plugin indent on    " required



"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
syntax on
filetype on
set number
set splitbelow
set encoding=UTF-8
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" vim terminal help
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
let g:terminal_close=1
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" NERDcommenter
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
map <C-_> <plug>NERDCommenterToggle

"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" YCM
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
let g:ycm_autoclose_preview_window_after_insertion=1
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" NERDtree
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
silent! nmap <M-a> :NERDTreeToggle<CR>
silent! map  <M-f> :NERDTreeFind<CR>
silent! map  <M-;> :NERDTreeToggle<CR>
silent! map  <M-'> :TagbarToggle<CR>
let g:auto_ctags = 1
nnoremap <C-]> <C-w><C-]><C-w>T
"let g:NERDTreeMapActivateNode="<M-a>"
"let g:NERDTreeMapPreview="<M-f>"

autocmd FileType fortran let b:comment_leader = '! '
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" Airline 
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wombat'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'


let g:airline_left_sep      = ''
let g:airline_left_alt_sep  = ''
let g:airline_right_sep     = ''
let g:airline_right_alt_sep = ''

let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 2
let g:airline_section_b                            = '%{getcwd()}' " in section B of the status line display the CWD
let g:airline#extensions#tabline#enabled           = 1             " enable airline tabline
let g:airline#extensions#tabline#show_close_button = 0             " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label        = ''            " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label     = ''            " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod          = ':t'          " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count    = 0             " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers      = 0             " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count     = 2             " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits       = 0             " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr       = 0             " disable tab numbers
let g:airline#extensions#tabline#show_tab_type     = 0             " disables the weird orange arrow on the tabline

"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" Define Fonts
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
"gihub repo fonts: ryanoasis/nerd-fonts 
if has("mac") || has("macunix")
	set guifont=IBM\ Plex\ Mono:h12
endif


"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" Disable Scrollbars
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L


"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" In insert or command mode, move normally by using Ctrl
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>
cnoremap <M-h> <Left>
cnoremap <M-j> <Down>
cnoremap <M-k> <Up>
cnoremap <M-l> <Right>

" Disable Arrow keys 
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
" Smart way to move between windows
map <M-j> <C-W>j
map <M-k> <C-W>k
map <M-h> <C-W>h
map <M-l> <C-W>l

map <M-t> :tabnew<CR>


"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" FORTRAN
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
au BufReadPost,BufNewFile *.f90 set tabstop=2 
au BufReadPost,BufNewFile *.f90 set shiftwidth=2 
au BufReadPost,BufNewFile *.f90 highlight link fortranTab NONE 
let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=1

"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" Colorschemes
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
colorscheme wombat
highlight clear LineNr
set colorcolumn=0

highlight NonText guifg = bg
highlight EndOfBuffer ctermfg=bg ctermbg=bg

"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
" By pressing * or # searches for the current name
"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction



