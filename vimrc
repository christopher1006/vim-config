set visualbell
set number
set relativenumber "Sets relative number for all lines except selected line.
set expandtab shiftwidth=4 softtabstop=4 "Changes tabs to 4 spaces"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

execute  pathogen#infect()
syntax on
filetype plugin indent on



" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
" colorscheme material

 if (has('nvim'))
   let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
   endif

   " For Neovim > 0.1.5 and Vim > patch 7.4.1799 -
"   https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
   " Based on Vim patch 7.4.1770 (`guicolors` option) -
 "  https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
   " https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
   if (has('termguicolors'))
     set termguicolors
     endif

let g:material_terminal_italics = 1
let g:airline_theme = 'material'
colorscheme material

let g:clang_library_path='/usr/lib/llvm-3.8/lib'

" Automatically closing braces
 inoremap {<CR> {<CR>}<Esc>ko<tab>
 inoremap [<CR> [<CR>]<Esc>ko<tab>
 inoremap (<CR> (<CR>)<Esc>ko<tab>
