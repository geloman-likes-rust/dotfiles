let mapleader = " "
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set smartcase
set hidden
set noerrorbells
set nowrap
set incsearch
set nohlsearch
set noshowmode
set encoding=UTF-8
set nocompatible
set termguicolors
set timeout
set timeoutlen=300
set updatetime=250
set signcolumn=yes
syntax on
set noshowmode

" Set the cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Tweaks for file browsing
let g:netrw_banner = 0 " disable explorer banner
let g:netrw_altv = 1 " open in prior window
let g:netrw_list_hide = netrw_gitignore#Hide() " hide all listed file in .gitignore
let g:netrw_liststyle = 3 " explorer tree view

" ----------------------------------------------
" ----------- CUSTOM STATUS LINE ---------------
" ----------------------------------------------
highlight Dark guibg=#2a324a guifg=#93a4c3
highlight LightGray guibg=#a0a8b7 guifg=#1A212E

set statusline=
set statusline+=\%#ModeMsg#\ %{WhatMode()}
set statusline+=\ %#Dark#\ %F
set statusline+=\%=
set statusline+=\ %{WhatOS()}
set statusline+=\ \|\ %{&fileencoding}\ \|
set statusline+=\ %Y
set statusline+=\ %#LightGray#\ buf:%n
set statusline+=\ %#ModeMsg#\ %l:%L\

" My custom keymaps
nnoremap G Gzz
nnoremap H Hzz
nnoremap L Lzz

" toggle filetree
nnoremap <silent> <leader>e <esc>:Lex 20<cr>



" Install vim-plug and all my plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" VIM-PLUGINS
call plug#begin('~/.vim/plugged')
    " AUTOCOMPLETION
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " FUZZY FINDER
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " VIM LANGUAGE PACK
    Plug 'sheerun/vim-polyglot'

    " GIT TOOL
    Plug 'tpope/vim-fugitive'

    " GIT SIGN
    Plug 'airblade/vim-gitgutter'

    " AUTO PAIRS & AUTO CLOSETAG
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'

    " HIGHLIGHT MATCHTAGS
    Plug 'leafOfTree/vim-matchtag'

    " ADJUSTS 'SHIFTWIDTH' AND 'EXPANDTAB' AUTOMATICALLY
    Plug 'tpope/vim-sleuth'

    " PLUGIN FOR ICONS
    Plug 'ryanoasis/vim-devicons'

    " COLORSCHEMES
    Plug 'joshdick/onedark.vim'

    " FORMAT ON SAVE (PRETTIER)
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

    " COLORIZER
    Plug 'lilydjwg/colorizer'

call plug#end()



" VIM ONEDARK CONFIG
let g:onedark_termcolors=256
let g:onedark_color_overrides = {
  \ "red": { "gui": "#f65866", "cterm": "204", "cterm16": "1" },
  \ "dark_red": { "gui": "#C70D3A", "cterm": "196", "cterm16": "9" },
  \ "green": { "gui": "#8bcd5b", "cterm": "114", "cterm16": "2" },
  \ "yellow": { "gui": "#efbd5d", "cterm": "180", "cterm16": "3" },
  \ "dark_yellow": { "gui": "#FFC26F", "cterm": "173", "cterm16": "11" },
  \ "blue": { "gui": "#41a7fc", "cterm": "39", "cterm16": "4" },
  \ "purple": { "gui": "#c75ae8", "cterm": "170", "cterm16": "5" },
  \ "cyan": { "gui": "#34bfd0", "cterm": "38", "cterm16": "6" },
  \ "black": { "gui": "#0c0e15", "cterm": "235", "cterm16": "0" },
  \ "foreground": { "gui": "#93a4c3", "cterm": "145", "cterm16": "NONE" },
  \ "background": { "gui": "#1a212e", "cterm": "235", "cterm16": "NONE" },
\}

colorscheme onedark



" VIM AIRLINE CONFIG
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='onedark'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty=''



" VIM AUTO CLOSETAG CONFIG
let g:closetag_filenames = '*.html,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,jsx,tsx'



" VIM AUTOCOMPLETION CONFIG
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Goto code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)

" Rename variable
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" coc-lsp
let g:coc_global_extensions = [
    \'coc-css',
    \'coc-emmet',
    \'coc-html',
    \'coc-json',
    \'coc-tsserver',
\]




" VIM FUGITIVE CONFIG
nnoremap <leader>gs :Gvdiffsplit<CR>



" VIM FORMATTER CONFIG
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_async = 1



" VIM FUZZY FINDER CONFIG
nnoremap <leader>sf :Files<CR>
nnoremap <leader><space> :Buffers<CR>
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.8 } }
let g:fzf_preview_syntax_highlighting = 1
let $FZF_DEFAULT_OPTS="--ansi --layout reverse --margin=1,4"
let $FZF_DEFAULT_OPTS='
  \ --color=fg:#a0a8b7,bg:#1a212e,hl:#af5fff
  \ --color=fg+:#1a212e,bg+:#a0a8b7,hl+:#d7005f
  \ --color=info:#afaf87,prompt:#4fa6ed,pointer:#d7005f
  \ --color=spinner:#af5fff'



" VIM MATCHTAGS CONFIG
let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_highlight_cursor_on = 1
let g:vim_matchtag_files = '*.html,*.ts,*.tsx,*.js,*.jsx,*.vue,*.svelte,*.jsp'



" VIM ON TMUX COLOR CONFIG
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Set language specific indentation
autocmd FileType javascript,javascriptreact,typescriptreact,typescript,html,css setlocal shiftwidth=2 softtabstop=2 tabstop=2
