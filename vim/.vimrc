let mapleader = " "
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set autowrite
set smartcase
set scrolloff=10
set sidescrolloff=10
set hidden
set noerrorbells
set nowrap
set incsearch
set timeout
set timeoutlen=300
set updatetime=250
set history=200
set noshowmode
set path+=** " search down into subfolders
set laststatus=2
set termguicolors
colorscheme habamax
syntax on

" Set cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


" My custom keymap
nnoremap G Gzz
nnoremap H Hzz
nnoremap L Lzz
nnoremap <leader>gd <C-]>
nnoremap <silent> <c-n> :bnext<cr>
nnoremap <leader>s :!ctags -R .

" switch tabs
nnoremap <silent> <S-tab> :tabprevious<cr>
nnoremap <silent> <tab> :tabNext<cr>

" keymap for tabnew
nnoremap <leader>ff :tabnew<space>

" keymap for help
nnoremap <leader>hh :help<space>

" close current buffer
nnoremap <silent> q <C-w>q

" close current tab
nnoremap <silent> <C-q> :tabclose<cr>

" toggle highlight search
nnoremap <silent> <leader>hl :set hlsearch!<cr>

" toggle cursorline
nnoremap <silent> <cr> :set cursorline!<cr>

" toggle code snippet suggestion
" inoremap <cr> <C-X><C-N>
inoremap <C-K> <C-P>
inoremap <C-J> <C-N>

" toggle filetree
nnoremap <silent> <leader>e <esc>:Lex 25<cr>

" html template
nnoremap <silent> <leader>! :-1read $HOME/.vim/snippets/skeleton.html<cr>9jf<

" show currently opened buffers
nnoremap <silent> <leader><space> :buffers<cr>

" Tweaks for file browsing
let g:netrw_banner = 0 " disable explorer banner
let g:netrw_altv = 1 " open in prior window
let g:netrw_list_hide = netrw_gitignore#Hide() " hide all listed file in .gitignore
" let g:netrw_liststyle = 3 " explorer tree view


" Set language specific indentation
autocmd FileType javascript,javascriptreact,typescriptreact,typescript,html,css setlocal shiftwidth=2 softtabstop=2 tabstop=2


" ---------------------------------------
" --------- CUSTOM COLORSCHEME ----------
" ---------------------------------------

autocmd BufWinEnter * highlight! Search guibg=#d6ffd6
autocmd BufWinEnter * highlight! Cursearch guifg=#d6ffd6 guibg=#03c988
autocmd BufWinEnter * highlight! IncSearch guifg=#d6ffd6 guibg=#03c988
autocmd InsertEnter * highlight! CursorLine gui=bold guibg=#2a324a
autocmd InsertEnter * highlight! CursorColumn gui=bold guibg=#2a324a
autocmd InsertEnter * set cursorline
autocmd InsertEnter * set cursorcolumn
autocmd InsertLeave * set nocursorline
autocmd InsertLeave * set nocursorcolumn

highlight DiffAdd guifg=#03C988 guibg=#d6ffd6
highlight DiffText guifg=#f6b26b guibg=#fbe0c3
highlight DiffChange guifg=#068fff guibg=#b4ddff
highlight DiffDelete guifg=#FC2947 guibg=#ffeeee

" ----------- POPUP MENU COLORSCHEME ------------
highlight Pmenu guifg=#4fa6ed guibg=#2a324a
highlight PmenuSel guifg=#2a324a guibg=#4fa6ed
highlight PmenuThumb guibg=#4fa6ed
highlight PmenuSbar guibg=#1a324a

highlight ModeMsg guifg=#2a324a


fu! WhatMode()
    if mode() == 'n'
        highlight ModeMsg guibg=#8bcd5b
        return "NORMAL"

    elseif mode() == 'i'
        highlight ModeMsg guibg=#4fa6ed
        return "INSERT"

    elseif mode() == 'c'
        highlight ModeMsg guibg=#efbd5d
        return "COMMAND"

    elseif mode() == 'R'
        highlight ModeMsg guibg=#e55561
        return "REPLACE"

    elseif mode() == 'v'
        highlight ModeMsg guibg=#bf68d9
        return "VISUAL"

    elseif mode() == 'V'
        highlight ModeMsg guibg=#bf68d9
        return "V-LINE"

    else
        highlight ModeMsg guibg=#bf68d9
        return "V-BLOCK"
    endif
endf


fu! WhatOS()
  if has('win32') || has('win64')
    return 'windows'

  elseif has('unix') || has('linux')
    return 'unix'

  else
    return 'mac'
  endif

endf


" ----------------------------------------------
" ----------- CUSTOM STATUS LINE ---------------
" ----------------------------------------------
highlight Dark guibg=#2a324a guifg=#93a4c3
highlight LightGray guibg=#a0a8b7 guifg=#1A212E

set statusline=
set statusline+=\%#ModeMsg#\ %{WhatMode()}
set statusline+=\ %#Dark#\ %t
set statusline+=\%=
set statusline+=\ \ %{&filetype}\ 
set statusline+=\│\ %{WhatOS()}\ 
set statusline+=\ %#LightGray#\ %P
set statusline+=\ %#ModeMsg#\ %l:%c\ 
