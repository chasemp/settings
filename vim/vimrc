" This must be first, because it changes other options as side effect
set nocompatible

"Makes arrow key navigation sane...
set whichwrap+=<,>,[,]

"make search case insensitive
set ic

"fuck you escape key
map! ii <Esc> " map ii to Esc
map! ;; <Esc> " map ;; to Esc

map <c-n> :NERDTreeToggle<CR>

nmap <c-o> <Esc>:w
"exit with inpunity no prompt just die
nmap <c-x> <Esc>:q<CR><CR>
nmap <c-a> <Esc>:Ack!

"code completion fun
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"pep8 checking
let g:pep8_map='c-8'

filetype off

"Code folding setup
"you will be able to be inside a method and type 'za' to open and close a fold.
set foldmethod=indent
set foldlevel=99

"Sometimes code folding isn't enough; 
"you may need to start opening up multiple windows and 
"working on multiple files at once or different locations 
"within the same file. To do this in vim, you can use these shortcuts:
"Vertical Split : Ctrl+w + v
"Horizontal Split: Ctrl+w + s
"Close current windows: Ctrl+w + q

"I also like to bind Ctrl+<movement> keys to move around the windows, 
"instead of using Ctrl+w + <movement>:

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"revision history
map <c-g> :GundoToggle<CR>

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype


" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
"yes ...this is crazy...
map <C-a> <Home>
map <C-e> <End>
