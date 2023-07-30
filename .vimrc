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
set hidden
set noerrorbells
set nowrap
set incsearch
set nohlsearch
set timeout
set timeoutlen=300
set updatetime=250
set history=200
set noshowmode
set path+=** " search down into subfolders
set laststatus=2
set termguicolors
colorscheme slate
syntax on

let g:enable_trasparent = 0
let g:show_os_icon = 1

" Set cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


" My custom keymap
nnoremap G Gzz
nnoremap H Hzz
nnoremap L Lzz
nnoremap <leader>gd <C-]>
nnoremap <leader>n :bnext<cr> 
nnoremap <leader>s :!ctags -R .

" toggle code snippet suggestion
inoremap <C-G> <C-X><C-N>
inoremap <tab> <C-N>
inoremap <s-tab> <C-P>

" toggle filetree
nnoremap <silent> <leader>e <esc>:Lex 25<cr>

" html template
nnoremap <silent> <leader>! :-1read $HOME/.vim/snippets/skeleton.html<cr>9jf<

" show currently opened buffers
nnoremap <silent> <leader><space> :buffers<cr>

" auto pair brackets && quotations
inoremap <silent> { {}<esc>i
inoremap <silent> [ []<esc>i
inoremap <silent> ( ()<esc>i
inoremap <silent> ` ``<esc>i
inoremap <silent> ' ''<esc>i
inoremap <silent> " ""<esc>i
inoremap <silent> < <><esc>i

" command! MakeTags !ctags -R .

" Tweaks for file browsing
let g:netrw_banner = 0 " disable explorer banner
let g:netrw_altv = 1 " open in prior window
let g:netrw_list_hide = netrw_gitignore#Hide() " hide all listed file in .gitignore
let g:netrw_liststyle = 3 " explorer tree view


" Set language specific indentation
autocmd FileType javascript,javascriptreact,typescriptreact,typescript,html,css setlocal shiftwidth=2 softtabstop=2 tabstop=2


" ---------------------------------------
" --------- CUSTOM COLORSCHEME ----------
" ---------------------------------------

highlight netrwSymLink guifg=#c75ae8
highlight netrwExe guifg=#8bcd5b
highlight netrwPlain guifg=#93a4c3
highlight netrwTreeBar guifg=#455574
highlight netrwClassify guifg=#4fa6ed

highlight vimEscape guifg=#dd9046
highlight vimContinue guifg=#dd9046
highlight vimFuncSID guifg=#dd9046
highlight vimNotation guifg=#dd9046

highlight CursorLineNR ctermfg=11 guifg=NONE guibg=#2a324a
highlight CursorLine ctermfg=11 guifg=NONE guibg=#2a324a

highlight Type guifg=#efbd5d
highlight Comment guifg=#455574
highlight StatusLine guibg=#a0a8b7 guifg=#1A212E
highlight Question guifg=#cc9057
highlight Directory guifg=#4fa6ed
highlight IncSearch guibg=#d99a5e
highlight MatchParen guibg=#2a324a guifg=NONE
"highlight Pmenu guifg=#e55561
highlight PmenuSel guifg=#e55561
highlight WildMenu guibg=#e55561
highlight ErrorMsg guifg=#f65866
highlight String guifg=#8bcd5b
highlight Constant guifg=#34bfd0
highlight Character guifg=#dd9046
highlight Number guifg=#dd9046
highlight Boolean guifg=#dd9046
highlight Float guifg=#dd9046
highlight Function guifg=#c75ae8
highlight Identifier guifg=#f65866
highlight Conditional guifg=#c75ae8
highlight Statement guifg=#c75ae8
highlight Repeat guifg=#c75ae8
highlight Label guifg=#c75ae8
highlight Operator guifg=#c75ae8
highlight Keyword guifg=#c75ae8
highlight Exception guifg=#c75ae8
highlight Include guifg=#c75ae8
highlight Define guifg=#c75ae8
highlight Macro guifg=#f65866
highlight Special guifg=#2a324a
highlight Tag guifg=#8bcd5b
highlight SpecialChar guifg=#f65866
highlight Delimiter guifg=#6c7d9c
highlight Visual ctermbg=242 guibg=#2a324a guifg=NONE

if g:enable_trasparent == 1
    highlight Normal guifg=#93a4c3 ctermbg=NONE guibg=NONE
    highlight VertSplit guifg=#2a324a guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guifg=#455574
    highlight LineNr guifg=#93a4c3
else
    highlight Normal guibg=#1A212E guifg=#93a4c3
    highlight VertSplit guifg=#2a324a guibg=#1A212E
    highlight EndOfBuffer guifg=#1A212E
    highlight LineNr guifg=#455574
endif

" -----------------------------------------------
" ------- LANGUAGE SPECIFIC COLORSCHEME ---------
" -----------------------------------------------
" --------------- JS,TS,JSX,TSX -----------------
autocmd FileType javascript,typescript,javascriptreact,typescriptreact 
    \ highlight Normal guifg=#93a4c3 |
    \ highlight Special guifg=#c75ae8 |
    \ highlight Identifier guifg=#c75ae8 |
    \ highlight htmlTag guifg=#c75ae8 |
    \ highlight link htmlTagName htmlTag |
    \ highlight JavaScriptBraces guifg=#6c7d9c |
    \ highlight link javaScriptParens JavascriptBraces |
    \ highlight javaScriptValue guifg=#4fa6ed |
    \ highlight Structure guifg=#e55561 |
    \ highlight Type guifg=#efbd5d |
    \ highlight PreProc guifg=#e55561 |
    \ highlight link typescriptBraces JavascriptBraces |
    \ highlight link typescriptParens JavascriptParens |
    \ highlight typescriptObjectColon guifg=#ffffff |
    \ highlight typescriptArrowFunc guifg=#93a4c3 |
    \ highlight typescriptClassName guifg=#efbd5d |
    \ highlight typescriptIdentifierName guifg=#93a4c3 |
    \ highlight typescriptVariableDeclaration guifg=#4fa6ed |
    \ highlight tsxEqual guifg=#93a4c3 |
    \ highlight tsxTagName guifg=#efbd5d |
    \ highlight typescriptFuncName guifg=#4fa6ed |


" -----------------------------------------------
" ------- LANGUAGE SPECIFIC COLORSCHEME ---------
" -----------------------------------------------
" ------------------- HTML ----------------------
highlight link htmlEndTag htmlTag
highlight htmlH1 guifg=#93a4c3
highlight htmlH2 guifg=#93a4c3
highlight htmlH3 guifg=#93a4c3
highlight htmlH4 guifg=#93a4c3
highlight htmlH5 guifg=#93a4c3
highlight htmlH6 guifg=#93a4c3
highlight htmlArg guifg=#efbd5d
highlight htmlTitle guifg=#93a4c3


" -----------------------------------------------
" ------- LANGUAGE SPECIFIC COLORSCHEME ---------
" -----------------------------------------------
" -------------------- CSS ----------------------
highlight cssClassName guifg=#4fa6ed
highlight cssClassNameDot guifg=#4fa6ed
highlight cssIdentifier guifg=#4fa6ed
highlight cssBraces guifg=#4fa6ed
highlight cssProp guifg=#efbd5d


" ----------- POPUP MENU COLORSCHEME ------------
highlight Pmenu guifg=#4fa6ed guibg=#2a324a
highlight PmenuSel guifg=#2a324a guibg=#4fa6ed
highlight PmenuThumb guibg=#4fa6ed
highlight PmenuSbar guibg=#1a324a


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
    if g:show_os_icon == 1
        return ''
    else
        return 'windows'
    endif

  elseif has('unix') || has('linux')
    if g:show_os_icon == 1
        return ''
    else
        return 'unix'
    endif

  else
    if g:show_os_icon == 1
        return ''
    else
        return 'mac'
    endif

  endif

endf


" ----------------------------------------------
" ----------- CUSTOM STATUS LINE ---------------
" ----------------------------------------------
highlight Dark guibg=#2a324a guifg=#93a4c3
highlight LightGray guibg=#a0a8b7 guifg=#1A212E

set statusline=
set statusline+=\%#ModeMsg#\ %{WhatMode()}
set statusline+=\ %#Dark#\ %f
set statusline+=\%=
set statusline+=\ %{WhatOS()}
set statusline+=\ \│\ %{&fileencoding}\ \│
set statusline+=\ %Y
set statusline+=\ %#LightGray#\ buf:%n
set statusline+=\ %#ModeMsg#\ %l:%L\ 
