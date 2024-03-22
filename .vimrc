"set nu
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set smartindent
syntax on


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

