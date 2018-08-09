" Modified From 'amix/vimrc'
"
""""""""""""""""
" Plug
""""""""""""""""

call plug#begin()
" Utils
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomtom/tlib_vim'
" Plug 'kien/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'fholgado/minibufexpl.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'jeetsukumaran/vim-buffergator'

" Plug 'Shougo/unite.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tommcdo/vim-fubitive'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tmhedberg/matchit'
Plug 'Valloric/YouCompleteMe'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
" Plug 'MattesGroeger/vim-bookmarks'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
" Plug 'Shougo/vimproc.vim'
Plug 'godlygeek/tabular'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
" function! DoRemote(arg)
"   UpdateRemotePlugins
" endfunction
" Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Lang
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'jparise/vim-graphql'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
" Plug 'mustache/vim-mustache-handlebars'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'mxw/vim-jsx'
" Plug 'flowtype/vim-flow'
Plug 'moll/vim-node'
Plug 'python-mode/python-mode', { 'for': 'python' }
" Plug 'vim-scripts/xul.vim'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'vim-scripts/nginx.vim', { 'for': 'nginx' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'ingydotnet/yaml-vim', { 'for': ['yaml', 'yml'] }
Plug 'vim-scripts/bash-support.vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'ekalinin/Dockerfile.vim'
Plug 'octol/vim-cpp-enhanced-highlight' 
Plug 'vim-scripts/svg.vim', { 'for': 'svg' }

Plug 'jasonshell/vim-svg-indent', { 'for': 'svg' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }

" Linter
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'w0rp/ale'
" Plug 'scrooloose/syntastic'

" Theme
" Plug 'altercation/vim-colors-solarized'
" Plug 'tomasr/molokai'
" Plug 'sickill/vim-monokai'
Plug 'skielbasa/vim-material-monokai'
Plug 'junegunn/vim-emoji'


call plug#end()

""""""""""""""""
" XXX: Work Around
""""""""""""""""
if has('python3')
  silent! python3 1
endif


""""""""""""""""
" General
""""""""""""""""
set history=500
set autoread
set omnifunc=syntaxcomplete#Complete



""""""""""""""""
" User Interface
""""""""""""""""
set so=7
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*~pyc 

" Show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act likes search in modern browers
set incsearch

" Dont redraw while excuting macros 
set lazyredraw

" For regular expression turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1



""""""""""""""""
" Colors and Fonts
""""""""""""""""
syntax enable
syntax on

set background=dark
set termguicolors

try 
  colorscheme material-monokai
  " colorscheme molokai
  " colorscheme solarized
catch
  echo "failed to load theme"
endtry

" set background=DarkGray
set number

" Set utf8
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


""""""""""""""""
" Material Monokai
""""""""""""""""
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
let g:airline_theme='materialmonokai'
let g:materialmonokai_subtle_airline=1


""""""""""""""""
" Files, backups and Undo
""""""""""""""""
set nobackup
set nowb
set noswapfile



""""""""""""""""
" Text, tab and indent
""""""""""""""""
set expandtab
set smarttab

" For javascript
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set wrap



""""""""""""""""
" Status line
""""""""""""""""
set laststatus=2




""""""""""""""""
" TagBar
""""""""""""""""
nmap <F8> :TagbarToggle<CR>



""""""""""""""""
" Golang
""""""""""""""""
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>



""""""""""""""""
" Golang
""""""""""""""""
let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
      \ 'p:package',
      \ 'i:imports:1',
      \ 'c:constants',
      \ 'v:variables',
      \ 't:types',
      \ 'n:interfaces',
      \ 'w:fields',
      \ 'e:embedded',
      \ 'm:methods',
      \ 'r:constructor',
      \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
      \ 't' : 'ctype',
      \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
      \ 'ctype' : 't',
      \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
      \ }

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

""""""""""""""""
" jelera/vim-javascript-syntax
""""""""""""""""
" au FileType javascript call JavaScriptFold()
"
""""""""""""""""
" jshint2
""""""""""""""""
let jshint2_save = 1



""""""""""""""""
" mxw/vim-jsx
""""""""""""""""
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1



""""""""""""""""
" phildawes/racer
""""""""""""""""
" set hidden
" let g:racer_cmd = "/Users/raylin/.cargo/bin/racer"
" let g:racer_experimental_completer = 1
" au FileType rust nmap gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gd <Plug>(rust-doc)


""""""""""""""""
" custom ftdetect
""""""""""""""""
au BufNewFile,BufRead *.es6 setf javascript
au BufNewFile,BufRead *.es setf javascript



""""""""""""""""
" C program
""""""""""""""""
" au BufNewFile,BufRead *.c set autowrite
" let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
" map <F8> : !gcc % && ./a.out <CR>



""""""""""""""""
" Synatastic
""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']



""""""""""""""""
" Airline
""""""""""""""""
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = '|%n'
" let g:airline_powerline_fonts = 1

" tabline
" let g:airline#extensions#tabline#tab_nr_type = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#fnamecollapse = 1


""""""""""""""""
" JSX
""""""""""""""""
let g:jsx_ext_required = 0



""""""""""""""""
" Session
""""""""""""""""
let g:session_autoload = 'no'
let g:session_autosave = 'yes'


""""""""""""""""
" Use deoplete
""""""""""""""""
let g:deoplete#enable_at_startup = 1



""""""""""""""""
" CPP highlight
""""""""""""""""
let g:cpp_class_scope_highlight = 1

" let g:rustfmt_autosave = 1


""""""""""""""""
" Use NERDTree
""""""""""""""""
map <C-n> :NERDTreeToggle<CR>


let g:lightline = {
    \ 'component': {
    \   'filename': '%n:%t'
    \ }
    \ }



""""""""""""""""
" Use FZF
""""""""""""""""
nnoremap <silent> <C-p> :FZF<CR>
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'

set cursorline


""""""""""""""""
" Use Prettier
""""""""""""""""
let g:prettier#autoformat = 0


""""""""""""""""
" Use GraphQL
""""""""""""""""
let g:graphql_javascript_tags = ["gql", "graphql", "Relay.QL", "graphQL"]


""""""""""""""""
" ALE
""""""""""""""""
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'rust': ['rustfmt']}
let g:ale_linters = {'rust': ['rls', 'rustc', 'cargo'], 'javascript': ['eslint', 'flow', 'prettier']}

highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = emoji#for('shit') " could use emoji
let g:ale_sign_warning = emoji#for('-1') " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
let g:ale_fix_on_save = 1


""""""""""""""""
" Easy Motion
""""""""""""""""
" 2 chars search
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

""""""""""""""""
" Git Gutter
""""""""""""""""
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
let g:EasyMotion_smartcase = 1
