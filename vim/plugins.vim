" =============================================================================
" /\   /\_   _ _ __   __| | | ___ 
" \ \ / / | | | '_ \ / _` | |/ _ \
"  \ V /| |_| | | | | (_| | |  __/
"   \_/  \__,_|_| |_|\__,_|_|\___|
" =============================================================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
"
"GitGutter---------------------------------------------------------------------
Plugin 'airblade/vim-gitgutter'
"------------------------------------------------------------------------------
"Aireline----------------------------------------------------------------------
"Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-powerline'
"------------------------------------------------------------------------------
"NerdTree----------------------------------------------------------------------
Plugin 'scrooloose/nerdtree'
"------------------------------------------------------------------------------
"Python-Mode-------------------------------------------------------------------
"Plugin 'klen/python-mode'
    " Override go-to.definition key shortcut to Ctrl-]
    "let g:pymode_rope_goto_definition_bind = "<C-]>"
    " Override run current python file key shortcut to Ctrl-Shift-e
    "let g:pymode_run_bind = "<C-S-e>"
    " Override view python doc key shortcut to Ctrl-Shift-d
    "let g:pymode_doc_bind = "<C-S-d>"
    " Disable rope enable left for jedi
    "let g:pymode_rope = 0 
    "keybidings
    "<Shift>K ---> go to documentation
    ":help pymode ---> pymode help
"------------------------------------------------------------------------------
"YouCompleteMe-----------------------------------------------------------------
"https://wiki.archlinux.org/index.php/YouCompleteMe%23C.23 Instalation guide
Plugin 'Valloric/YouCompleteMe'                             "Autocomplete addon
    let g:ycm_key_list_select_completion   = ['<C-j>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

    let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
    let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
    let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
    let g:ycm_complete_in_comments = 1 " Completion in comments
    let g:ycm_complete_in_strings = 1 " Completion in string
"------------------------------------------------------------------------------
"CtrlP-------------------------------------------------------------------------
Plugin 'kien/ctrlp.vim'                                           "Ctrl+P addon
"------------------------------------------------------------------------------
"UltiSnips---------------------------------------------------------------------
"Plugin 'SirVer/ultisnips'                                        "Snippet addon
    "let g:UltiSnipsExpandTrigger="<tab>"
    "let g:UltiSnipsJumpForwardTrigger="<tab>"
    "let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"------------------------------------------------------------------------------
"Snippets collection-----------------------------------------------------------
"Plugin 'honza/vim-snippets'                          "Default snipet collection
    "auto load django and htmldjango on startup for snippets
    "autocmd FileType python set ft=python.django
    "autocmd FileType html set ft=htmldjango.html
"------------------------------------------------------------------------------
"Syntastic----------------------------------------------------------------------
"Plugin 'scrooloose/syntastic'                            "syntax errors checker
    "set statusline+=%#warningmsg#
    "set statusline+=%{SyntasticStatuslineFlag()}
    "set statusline+=%*

    "let g:syntastic_always_populate_loc_list = 1
    "let g:syntastic_auto_loc_list = 1 "show the error list automaticaly
    "let g:syntastic_check_on_open = 1
    "let g:syntastic_check_on_wq = 0

    "let g:syntastic_python_checkers = ['pep8'] 
    "let g:syntastic_echo_current_error = 1
    "let g:syntastic_enable_signs = 1 "mark syntax errors with :signs
    "let g:syntastic_auto_jump = 1
    "let g:syntastic_mode_map = {'mode': 'active'}
""------------------------------------------------------------------------------
""Nerdcommenter-----------------------------------------------------------------
Plugin 'scrooloose/nerdcommenter'                            "comments provider
""------------------------------------------------------------------------------
""EasyMotion--------------------------------------------------------------------
""Plugin 'easymotion/vim-easymotion'                     "easy move between words
""<leader><leader>w        ---> find words
""<leader><leader>f<char>  ---> find chars
""------------------------------------------------------------------------------
""Surround----------------------------------------------------------------------
""Plugin 'tpope/vim-surround'                            "surround text with tags 
""yss[new one]             ---> insert surrounding
""cs[current][new one]     ---> change surrounding
""ds[current]              ---> delete surrounding
""------------------------------------------------------------------------------
""Sparkup-----------------------------------------------------------------------
""Plugin 'rstacruz/sparkup'                                   "fast html expander
""------------------------------------------------------------------------------
""VimIndent---------------------------------------------------------------------
""Plugin 'nathanaelkane/vim-indent-guides'
""identation plugin <leader>ig for activating
""------------------------------------------------------------------------------
""AutoPairs---------------------------------------------------------------------
""Plugin 'jiangmiao/auto-pairs'                 "auto complete pairs aka brackets
""------------------------------------------------------------------------------
""ColorSchemes------------------------------------------------------------------
Plugin 'flazz/vim-colorschemes'                       "massive amount of themes
""------------------------------------------------------------------------------
call vundle#end()
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

" Brief vundle help
" :PluginList       - lists configured plugins
" :PluginUpdate     - update all plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
"
" TODO: check vim pasta plugin
