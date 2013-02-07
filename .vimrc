filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
filetype plugin on

let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

map <leader>n :NERDTreeToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>


" Execute the tests
nmap <silent><Leader>f <Esc>:w<CR>:Pytest file<CR>
nmap <silent><Leader>c <Esc>:w<CR>:Pytest class<CR>
nmap <silent><Leader>m <Esc>:w<CR>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>
map <Leader>g <Plug>MakeGreen"change from <Leader>mg to <Leader>]

if has("autocmd")
	autocmd BufRead *.py set tw=79 " 79 characters max on python files
	"autocmd FileType python compiler pylint
	autocmd BufNewFile,BufRead *.py compiler nose
	let g:pydiction_location = "~/.vim/dicts/complete-dict"
        let g:pydiction_menu_height = 20
endif
" Ignore some files with tab autocompletion
set suffixes=*~,*.pyc,*.pyo

hi Search  term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
:colorscheme wombat256

map <Leader>s <Esc>:setlocal spell spelllang=en_us<CR>
map <Leader>ns <Esc>:setlocal nospell<CR>
