" Configurazione minimale (inspirato da antirez) con status bar personalizzata
" Usa il colorscheme di default
set background=dark

" Impostazioni di base
set tabstop=4 " Tab width
set shiftwidth=4 " Indentazione
set expandtab " Usa spazi invece di tab
set autoindent " Auto indentazione
set smartindent " Indentazione intelligente
syntax enable
colorscheme default

" Impostazioni di ricerca
set hlsearch " Evidenzia risultati ricerca
set incsearch " Ricerca incrementale
set ignorecase " Ignora maiuscole/minuscole
set smartcase " Ma considera maiuscole se presenti

" Impostazioni interfaccia
set showmatch " Mostra parentesi corrispondenti
set ruler " Mostra posizione cursore
set showcmd " Mostra comandi parziali
set laststatus=2 " Sempre mostra status line

" Disabilita suoni
set noerrorbells
set novisualbell

" Impostazioni file
set nobackup " Non creare file di backup
set noswapfile " Non creare file swap
set autoread " Ricarica automaticamente file modificati

" Mappings utili
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>

" Syntax highlighting personalizzato per PHP
autocmd FileType php highlight phpVarSelector ctermfg=white
autocmd FileType php highlight phpIdentifier ctermfg=white
autocmd FileType php highlight phpVariable ctermfg=white
autocmd FileType php highlight String ctermfg=magenta
autocmd FileType php highlight SpecialChar ctermfg=red

" Elementi in darkyellow
autocmd FileType php highlight Type ctermfg=darkyellow               " int, string, bool, void, etc.
autocmd FileType php highlight phpType ctermfg=darkyellow            " tipi PHP
autocmd FileType php highlight Keyword ctermfg=darkyellow            " function, class, array, etc.
autocmd FileType php highlight StorageClass ctermfg=darkyellow       " public, private, static, etc.
autocmd FileType php highlight Structure ctermfg=darkyellow          " class, interface, trait, etc.
autocmd FileType php highlight phpKeyword ctermfg=darkyellow         " parole chiave PHP
autocmd FileType php highlight phpStorageClass ctermfg=darkyellow    " modificatori PHP
autocmd FileType php highlight phpStructure ctermfg=darkyellow       " strutture PHP
autocmd FileType php highlight phpDefine ctermfg=darkyellow          " define statements
autocmd FileType php highlight Statement ctermfg=darkyellow          " return, break, continue, exit
autocmd FileType php highlight phpStatement ctermfg=darkyellow       " statement PHP specifici
autocmd FileType php highlight Conditional ctermfg=darkyellow        " if, while, else, elseif, etc.
autocmd FileType php highlight Repeat ctermfg=darkyellow             " for, foreach, do, etc.
autocmd FileType php highlight Number ctermfg=blue             " numeri interi
autocmd FileType php highlight Float ctermfg=blue              " numeri decimali
autocmd FileType php highlight Operator ctermfg=darkyellow           " =, ==, !=, >, <, etc.
autocmd FileType php highlight phpOperator ctermfg=darkyellow        " operatori PHP specifici
autocmd FileType php highlight phpComparison ctermfg=darkyellow      " operatori di confronto
autocmd FileType php highlight Function ctermfg=white                " nomi delle funzioni
autocmd FileType php highlight phpFunctions ctermfg=darkyellow       " funzioni PHP built-in
autocmd FileType php highlight phpBuiltinFunctions ctermfg=darkyellow " isset, empty, etc.
autocmd FileType php highlight phpSpecialFunction ctermfg=darkyellow  " funzioni speciali
autocmd FileType php highlight phpExit ctermfg=darkyellow            " exit, die
autocmd FileType php highlight phpInclude ctermfg=darkyellow         " include, require, etc.
autocmd FileType php highlight Delimiter ctermfg=white               " parentesi, virgole, etc.

" Colore speciale per la parola chiave 'function'
autocmd FileType php syntax keyword phpFunctionKeyword function containedin=phpRegion
autocmd FileType php highlight phpFunctionKeyword ctermfg=darkgreen

" Syntax highlighting per C/C++
autocmd FileType c,cpp highlight Keyword ctermfg=darkyellow
autocmd FileType c,cpp highlight StorageClass ctermfg=darkyellow
autocmd FileType c,cpp highlight Statement ctermfg=darkyellow
autocmd FileType c,cpp highlight Conditional ctermfg=darkyellow
autocmd FileType c,cpp highlight Repeat ctermfg=darkyellow
autocmd FileType c,cpp highlight Number ctermfg=darkyellow
autocmd FileType c,cpp highlight Float ctermfg=darkyellow
autocmd FileType c,cpp highlight Operator ctermfg=darkyellow
autocmd FileType c,cpp highlight Function ctermfg=darkyellow

" Syntax highlighting per JavaScript
autocmd FileType javascript highlight Keyword ctermfg=darkyellow
autocmd FileType javascript highlight StorageClass ctermfg=darkyellow
autocmd FileType javascript highlight Statement ctermfg=darkyellow
autocmd FileType javascript highlight Conditional ctermfg=darkyellow
autocmd FileType javascript highlight Repeat ctermfg=darkyellow
autocmd FileType javascript highlight Number ctermfg=darkyellow
autocmd FileType javascript highlight Float ctermfg=darkyellow
autocmd FileType javascript highlight Operator ctermfg=darkyellow
autocmd FileType javascript highlight Function ctermfg=darkyellow

" Syntax highlighting per Python
autocmd FileType python highlight Keyword ctermfg=darkyellow
autocmd FileType python highlight Statement ctermfg=darkyellow
autocmd FileType python highlight Conditional ctermfg=darkyellow
autocmd FileType python highlight Repeat ctermfg=darkyellow
autocmd FileType python highlight Number ctermfg=darkyellow
autocmd FileType python highlight Float ctermfg=darkyellow
autocmd FileType python highlight Operator ctermfg=darkyellow

" Syntax highlighting per Java
autocmd FileType java highlight Keyword ctermfg=darkyellow
autocmd FileType java highlight StorageClass ctermfg=darkyellow
autocmd FileType java highlight Statement ctermfg=darkyellow
autocmd FileType java highlight Conditional ctermfg=darkyellow
autocmd FileType java highlight Repeat ctermfg=darkyellow
autocmd FileType java highlight Number ctermfg=darkyellow
autocmd FileType java highlight Float ctermfg=darkyellow
autocmd FileType java highlight Operator ctermfg=darkyellow

" Syntax highlighting per Ruby
autocmd FileType ruby highlight Keyword ctermfg=darkyellow
autocmd FileType ruby highlight Statement ctermfg=darkyellow
autocmd FileType ruby highlight Conditional ctermfg=darkyellow
autocmd FileType ruby highlight Repeat ctermfg=darkyellow
autocmd FileType ruby highlight Number ctermfg=darkyellow
autocmd FileType ruby highlight Float ctermfg=darkyellow
autocmd FileType ruby highlight Operator ctermfg=darkyellow

" Syntax highlighting per Go
autocmd FileType go highlight Keyword ctermfg=darkyellow
autocmd FileType go highlight Statement ctermfg=darkyellow
autocmd FileType go highlight Conditional ctermfg=darkyellow
autocmd FileType go highlight Repeat ctermfg=darkyellow
autocmd FileType go highlight Number ctermfg=darkyellow
autocmd FileType go highlight Float ctermfg=darkyellow
autocmd FileType go highlight Operator ctermfg=darkyellow

" Status Line personalizzata (da antirez)
hi User1 ctermfg=green ctermbg=black
hi User2 ctermfg=yellow ctermbg=black
hi User3 ctermfg=red ctermbg=black
hi User4 ctermfg=blue ctermbg=black
hi User5 ctermfg=white ctermbg=black
set statusline=
set statusline +=%1*\ %n\ %* "buffer number
set statusline +=%5*%{&ff}%* "file format
set statusline +=%3*%y%* "file type
set statusline +=%4*\ %<%F%* "full path
set statusline +=%2*%m%* "modified flag
set statusline +=%1*%=%5l%* "current line
set statusline +=%2*/%L%* "total lines
set statusline +=%1*%4v\ %* "virtual column number
set statusline +=%2*0x%04B\ %* "character under cursor
