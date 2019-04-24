"vim-plug configuration
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

call plug#end()

" general settings and UI
set ruler
set showmode
set nu
set relativenumber
syntax enable

au BufRead,BufNewFile *.html5 set filetype=php

" imported vimrc file [start]
" Sample .vimrc file by Martin Brochhaus
" Presented at PyCon APAC 2012


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unnamed


" Mouse and backspace
"" set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
"" let mapleader = ","



" Quicksave command
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
"" noremap <Leader>e :quit<CR>  " Quit current window
"" noremap <Leader>E :qa!<CR>   " Quit all windows


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
""autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
""au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
""set t_Co=256
""color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
"" filetype off
"" filetype plugin indent on
"" syntax on

" Line Number BG
highlight LineNr ctermbg=black


" Showing line numbers and length
"" set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
"let g:ctrlp_max_height = 30
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_show_hidden = 1
"set wildignore+=*.pyc
"set wildignore+=*_build/*
"set wildignore+=*/coverage/*


" You Complete Me
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]
"nmap <leader>gd :YcmDiags<CR>
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_goto_buffer_command = 'vertical-split'
"let g:ycm_key_invoke_completion = '<C-Space>'


"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_signs=1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_mode="passive"
"let g:syntastic_mode_map = { 'passive_filetypes': ['latex'] }
"let g:syntastic_javascript_checkers = ['jshint']
"nnoremap <F7> :SyntasticCheck<CR> :lopen<CR>
"nnoremap <F8> :SyntasticToggleMode<CR>
"let g:syntastic_quiet_messages = { "regex": [
"        \ '\mpossible unwanted space at "{"',
"        \ 'Do not use @ in LaTeX macro names.',
"        \ ] }


" " Settings for jedi-vim
" " cd ~/.vim/bundle
" " git clone git://github.com/davidhalter/jedi-vim.git
" let g:jedi#usages_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
" 
" " Better navigating through omnicomplete option list
" " See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
" set completeopt=longest,menuone
" function! OmniPopup(action)
    " if pumvisible()
        " if a:action == 'j'
            " return "\<C-N>"
        " elseif a:action == 'k'
            " return "\<C-P>"
        " endif
    " endif
    " return a:action
" endfunction
" 
" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

"" imported vimrc file [end]


set grepprg=grep\ -nH\ $*

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:tex_flavor = "latex"

"" Plugins and Bundles
"" NERDtree browser
"Bundle 'scrooloose/nerdtree'
"
"" Task Manager/ Planer
"Bundle 'farseer90718/vim-taskwarrior'
"
"" Autocomplete
"Bundle 'Valloric/YouCompleteMe'
"
"" A wiki inside vim (with html export)
"Bundle 'vim-scripts/vimwiki'
"
"" fuzzy search
"Bundle 'ctrlpvim/ctrlp.vim'
"
"" git wrapper
"Plugin 'tpope/vim-fugitive'
"
"" Git diff
"Plugin 'airblade/vim-gitgutter'
"
"" highlight the current mode [input, normal, command]
"Plugin 'powerline/powerline'
"
"" python
""Plugin 'davidhalter/jedi-vim'
"Plugin 'nvie/vim-flake8'
"
"" Python indent
"Plugin 'hynek/vim-python-pep8-indent'
"
"" Close html tags
"Plugin 'tpope/vim-ragtag'
"
"" JS/HTML-Beautify
"Plugin 'Chiel92/vim-autoformat'
"
"" expanding abbreviations
"Plugin 'mattn/emmet-vim'
"
"" Vim-Surround
"Plugin 'tpope/vim-surround'
" 
"" Syntastic
"Plugin 'scrooloose/syntastic'
"

" all plugins must be added before this
"call vundle#end()
filetype plugin on
filetype indent on
set formatoptions-=cro

" custom keybingings
    nmap <leader>ne :NERDTreeToggle<cr>

    " Bind nohl
    " Removes highlight of your last search
    " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
    noremap <C-n> :nohl<CR>
    vnoremap <C-n> :nohl<CR>
    inoremap <C-n> :nohl<CR>

    " bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
    " Every unnecessary keystroke that can be saved is good for your health :)
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h


    " easier moving between tabs
    map <Leader>n <esc>:tabprevious<CR>
    map <Leader>m <esc>:tabnext<CR>


    " map sort function to a key
    vnoremap <Leader>s :sort<CR>

    " easier moving of code blocks
    " Try to go into visual mode (v), thenselect several lines of code here and
    " then press ``>`` several times.
    vnoremap < <gv  " better indentation
    vnoremap > >gv  " better indentation

    " easier formatting of paragraphs
    vmap Q gq
    nmap Q gqap

    " bind K to grep word under cursor
    nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


set encoding=utf-8

" closetag.vim config
let g:closetag_filenames = "*.html, *.xhtml, *.phtml, *.vm"

" tree view (ftp)
let g:netrw_liststyle = 3

set diffopt+=vertical
