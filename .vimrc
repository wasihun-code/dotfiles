" =====================
" BASIC SETTINGS
" =====================
set nocompatible
set number
set relativenumber
set hidden
set nowrap
set mouse=a
set clipboard=unnamedplus
set updatetime=300
set signcolumn=yes
set termguicolors

" Indentation (sane defaults)
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set smartindent

" =====================
" PLUGINS
" =====================
call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Fuzzy finder / command box
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax highlighting
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-repeat'


" LSP support
Plug 'thesis/vim-solidity', {'branch': 'main'}   " Solidity syntax, indent, folding:contentReference[oaicite:5]{index=5}
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " LSP & completion framework:contentReference[oaicite:8]{index=8}


call plug#end()

" =====================
" THEME
" =====================
colorscheme gruvbox
set background=dark

" =====================
" AIRLINE
" =====================
let g:airline_powerline_fonts = 1

" =====================
" LSP SETTINGS
" =====================
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_signs_enabled = 1

" Keybindings
nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap <leader>rn :LspRename<CR>

autocmd BufRead,BufNewFile *.sol set filetype=solidity
augroup solidity_folding
  autocmd!
  autocmd FileType solidity setlocal foldmethod=syntax
augroup END

nnoremap <C-p> :Files! ~/development<CR>


