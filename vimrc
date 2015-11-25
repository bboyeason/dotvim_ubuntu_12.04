syntax on
filetype on
set ic
set nu
set ru
set cursorline
set hlsearch
set incsearch
set ruler
let Tlist_Ctags_Cmd="/usr/bin/ctags"
set smartindent
set tabstop=4
set shiftwidth=4
"set expandtab
set nofoldenable " 开始折叠
set foldmethod=marker " 设置標識折叠
"set foldmethod=manual " 设置手動折叠
set foldcolumn=0 " 设置折叠区域的宽度
"setlocal foldlevel=1 " 设置折叠层数为
"set foldclose=all " 设置自動折叠起來（當游標離開時）
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 以空白鍵開關摺疊

""
"Taglist
""
let Tlist_Ctags_Cmd="/usr/bin/ctags"
map <F5> :Tlist<CR>
map <C-l> :Tlist<CR>
map <C-]> :ts<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

""
"NERD Tree
""
map <C-n> :NERDTreeToggle<CR>
"Auto close NERD Tree window once you close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"let g:NERDTreeMinimalUI = 1
let g:NERDChristmasTree = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""
"PowerLine
""
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
let g:airline_powerline_fonts = 1    
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
