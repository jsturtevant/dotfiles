" vimrc ideas
" https://dougblack.io/words/a-good-vimrc.html

" vim-plug configuration
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
" reminder - call :PlugInstall to install plugins!

" custom vim config
set number              " show line numbers

set showcmd             " show command in bottom bar
" set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]

set hlsearch            " highlight searches
" reminder - disable highlight with :noh

set tabstop=2           " number of spaces per visual tab
set softtabstop=2       " number of spaces per tab when editing
set shiftwidth=2        " number of spaces to indent with <<, >>, and automatic indentation
set expandtab           " use spaces over tabs
filetype indent on      " load filetype-specific indent files

set lazyredraw          " redraw only when needed

set foldenable          " enable code folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" reminder - open/close folds with za

set mouse=a             " enable the mouse

" set some file types to 2 space indent
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType zsh setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

set splitbelow          " open new :sp/:split panes below
set splitright          " open new :vsp/:vsplit panes to the right
" reminder - navigate panes with Ctrl+W, h/j/k/l

" auto-insert pairing braces/brackets/etc when creating a block
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

""""""""""""""""""""""""""""""""
" go-vim config
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
set autowrite           " save file for go-vim or :make
let g:go_highlight_types = 1
let g:go_highlight_functions = 1

" build and run with \b \r
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

"""""""""""""""""""""""""""""""
" fzf config
" Jump to specific file
noremap <C-P> :Files<cr>
" ag (grep) whole project
noremap <C-f> :Ag!<cr>

"""""""""""""""""""""""""""""""
"netrw
"https://shapeshed.com/vim-netrw/#changing-the-directory-view-in-netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
 
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" --- altercation/vim-colors/solarized ---
colorscheme murphy   " use color scheme

" --- vim-airline/vim-airline ---
set laststatus=2        " always show statusbar

" use powerline fonts
let g:airline_powerline_fonts=1

" show PASTE if in paste mode
let g:airline_detect_paste=1

" show airline for tabs too
let g:airline#extensions#tabline#enabled=1

" use the solarized theme for the airline status bar
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

