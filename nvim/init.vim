" Plugins
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    " buffer delete
    Plug 'moll/vim-bbye'

    " window resize
    Plug 'simeji/winresizer'

    " fzf
    Plug 'junegunn/fzf.vim'

    " undo tree
    Plug 'simnalamburt/vim-mundo'
    
    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " collection of snippets
    Plug 'honza/vim-snippets'

    " compiler and linter
    Plug 'neomake/neomake'

    " theme gruvbox
    Plug 'morhetz/gruvbox'

    " status bar
    Plug 'itchyny/lightline.vim'

    " tmux
    Plug 'wellle/tmux-complete.vim'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'christoomey/vim-tmux-navigator'

    " man pages in Neovim
    Plug 'jez/vim-superman'

    " nerdtree
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " sandwich
    Plug 'machakann/vim-sandwich'

    " easymotion
    Plug 'easymotion/vim-easymotion'
    
    " text targets
    Plug 'wellle/targets.vim'

    " yank
    Plug 'bfredl/nvim-miniyank'
    Plug 'machakann/vim-highlightedyank'

    " git
    Plug 'tpope/vim-fugitive'

    " css
    Plug 'ap/vim-css-color'

    " comments
    Plug 'tpope/vim-commentary'

    " md viewer
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

    " kitty
    Plug 'fladson/vim-kitty'
call plug#end()

" use xsel
set clipboard+=unnamedplus

" disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" no swap file
set noswapfile

" save undo trees in files
set undofile

" number of undo saved
set undolevels=10000
set undoreload=10000

" relative line numbers
set relativenumber

" use 2 spaces instead of tab ()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Show substitution
set inccommand=nosplit

" hidden buffer
set hidden

" space as leader
nnoremap <space> <nop>
let mapleader = "\<space>"

" remaps
nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab
nnoremap <c-w>h <c-w>s

" config for fzf.vim 
nnoremap <leader>f :Files<cr>


" coc.vim 
let g:coc_global_extensions = [
            \ 'coc-snippets',
            \ 'coc-css', 
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-vetur',
            \ 'coc-clangd',
            \ 'coc-pyright',
            \]


" some servers have issues with backup files
set nobackup
set nowritebackup

" give more space for displaying messages.
set cmdheight=2

" stable update time
set updatetime=300

" don't pass messages to |ins-completion-menu|.
set shortmess+=c

" always show the signcolumn
set signcolumn=number

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" make <CR> auto-select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" neomake 
" neomake signs in the gutter
let g:neomake_error_sign = {'text': '', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {
            \   'text': '',
            \   'texthl': 'NeomakeWarningSign',
            \ }
let g:neomake_message_sign = {
            \   'text': '',
            \   'texthl': 'NeomakeWarningSign',
            \ }
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

" update neomake when save file
call neomake#configure#automake('w')
command! -bang -nargs=* -complete=file Make NeomakeProject <args>

" enable linters
let g:neomake_sh_enabled_makers = ['shellcheck']
let g:neomake_vim_enabled_makers = ['vint']

" gruvbox 
augroup gruvbox
  autocmd!
  autocmd vimenter * ++nested colorscheme gruvbox 
augroup end

" lightline 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>

" miniyank
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>p <Plug>(miniyank-startput)
map <leader>P <Plug>(miniyank-startPut)
map <leader>o <Plug>(miniyank-cycle)
map <leader>O <Plug>(miniyank-cycleback)

