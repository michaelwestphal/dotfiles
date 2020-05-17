" Dein.vim prereqs to run:
" https://github.com/Shougo/dein.vim
"
" 1. Run
" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" sh ./installer.sh ~/.vim/cache/dein
"
" 2. Open vim and install dein
" :call dein#install()
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/mwestpha/.config/nvim/cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/mwestpha/.config/nvim/cache/dein')
  call dein#begin('/Users/mwestpha/.config/nvim/cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/mwestpha/.config/nvim/cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " REQUIRED: Add a syntax file. YATS is the best
  call dein#add('HerringtonDarkholme/yats.vim')
  " Prereq: (When not installed local)
  " npm install -g typescript
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})

  " For async completion
  " Prereq: if the following command does not return 1:
  " :echo has("python3")
  " pip3 install --user pynvim
  call dein#add('Shougo/deoplete.nvim')

  " For Denite features
  call dein#add('Shougo/denite.nvim')

  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('dense-analysis/ale')

  " Themes
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('mhartington/oceanic-next')

  " Theme related
  call dein#add('ryanoasis/vim-devicons')

  call dein#add('vim-airline/vim-airline')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-projectionist')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax on " enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"set notermguicolors
if (has("termguicolors"))
  set termguicolors
endif

"set termguicolors
"set background=light
"colorscheme solarized

colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 1
