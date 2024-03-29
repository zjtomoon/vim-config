" AGou-ops VIMRC FILE         -- Update Date: 2022年01月02日16:57:08
set nocompatible              " be iMproved, required

" ============================== Plugin packages ============================== 
" Begin Plug, Depends On https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" ========= colorscheme here. ==========
" Plug 'joshdick/onedark.vim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'EdenEast/nightfox.nvim'
" Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

" ========= appearence here. ==========

Plug 'nvim-lualine/lualine.nvim'
" Plug 'feline-nvim/feline.nvim'
Plug 'xiyaowong/nvim-transparent'
Plug 'junegunn/goyo.vim'
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
" welcome page
Plug 'mhinz/vim-startify'

" ========= useful tools here. ==========

Plug 'plasticboy/vim-markdown'
Plug 'camspiers/lens.vim'
Plug '907th/vim-auto-save'
Plug 'preservim/tagbar'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
" not working on my macOS, fuckkkkk
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'voldikss/vim-floaterm'
Plug 'akinsho/toggleterm.nvim'
" not longer use fzf, just use telescope
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'akinsho/bufferline.nvim'

" Plug 'Yggdroot/indentLine'
Plug 'itchyny/vim-cursorword'
" Plug 'dominikduda/vim_current_word'

Plug 'rrethy/vim-illuminate'
Plug 'ryanoasis/vim-devicons'
Plug 'sebdah/vim-delve'
" scroll bar
Plug 'Xuyuanp/scrollbar.nvim'
" smmoth scroll: :h scroll.txt  for help
" Plug 'psliwka/vim-smoothie'
Plug 'karb94/neoscroll.nvim'
" Easily speed up your neovim startup time!
Plug 'dstein64/vim-startuptime'
Plug 'nathom/filetype.nvim'

Plug 'numToStr/Comment.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mbbill/undotree'
" Plug 'rmagatti/auto-session'
Plug 'folke/persistence.nvim'
Plug 'folke/which-key.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

" ========= programming tools here. ==========

Plug 'dense-analysis/ale'
" lsp server
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'owickstrom/vim-colors-paramount'
Plug 'lewis6991/gitsigns.nvim'

Plug 'tami5/lspsaga.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'puremourning/vimspector'
" Plug 'mfussenegger/nvim-dap'
Plug 'sindrets/diffview.nvim'
Plug 'matze/vim-move'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'


"
" =============== END plugin ===============
call plug#end()

" ============================== END Plugin packages ============================== 

" ============================== Pre settings ============================== 
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif
" ============================== END Pre settings ============================== 

" ============================== General settings ============================== 
" 为了避免出错,我把通用配置项放在前面,一般来说你不需要更改这个文件.
if filereadable($HOME . "/.config/nvim/general.vim")
    source $HOME/.config/nvim/general.vim
endif
" ============================== END General settings ============================== 

" ============================== Colorscheme settings ============================== 
" colorscheme gruvbox
" colorscheme onedark
" set bg=dark
" let g:onedark_termcolors=256
" ===========================
" Example config in VimScript
" let g:tokyonight_style = "night"
" let g:tokyonight_italic_functions = 1
" let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" 
"  Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:tokyonight_colors = {
"   \ 'hint': 'orange',
"   \ 'error': '#ff0000'
" \ }
" colorscheme tokyonight
" ============================
" colorscheme Duskfox
" ============================
" ========= gruvbox_material settings =======
" https://github.com/sainnhe/gruvbox-material/blob/master/doc/gruvbox-material.txt
" Important!!
if has('termguicolors')
    set termguicolors
endif
" For dark version.
set background=dark
" For light version.
" set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
" only support GUI client
let g:gruvbox_material_cursor = 'auto'
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_better_performance = 1

colorscheme gruvbox-material

" ============================== END colorscheme settings ============================== 
"
"
" ============================== Plugins settings ============================== 

" ========= indentline settings ==========
" " let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = '┆'
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
"
" " disable by default
" let g:transparent_enabled = v:false
" " not working on macOS, change color for indentLine
" let g:indentLine_setColors = 0
" more simple method to achieve indentline
" set list lcs=tab:\┆\ 

" ========= autopairs settings ==========
" defalut options


" ========= tagbar settings ==========
let g:tagbar_ctags_bin='/opt/homebrew/Cellar/ctags/5.8_2/bin/ctags'
autocmd VimEnter *.go  Tagbar

" ========= nvim-cmp settings ==========
set completeopt=menu,menuone,noselect

" ========= goyo settings ==========
let g:goyo_width = '60%'
let g:goyo_height = '85%'
" line number
let g:goyo_linenr = 0

" ========= firenvim settings ==========
" if exists('g:started_by_firenvim')
"   set guifont=Fira_Code:h30
" end

" ========= gitblame settings ==========
let g:gitblame_enabled = 1
let g:gitblame_message_template = '     ◆ <summary> • <date> • <author>     '
let g:gitblame_date_format = '%r'
" let g:gitblame_highlight_group = "Question"
highlight default link Visual default

" ========= auto-session settings ==========
" let g:auto_session_root_dir = '~/.vim/sessions/'
" nnoremap <leader>ss <cmd>SaveSession<CR>
nnoremap <leader>sd <cmd>!rm -f ~/.config/nvim/sessions/*<CR>


" ========= persistence(auto session) settings ==========

" restore the session for the current directory
nnoremap <leader>ss <cmd>lua require("persistence").load()<CR>
" restore the last session
nnoremap <leader>sl <cmd>lua require("persistence").load({ last = true })<CR>
" stop Persistence => session won't be saved on exit
nnoremap <leader>s <cmd>lua require("persistence").stop()<CR>

" ========= vim-visual-multi settings ==========
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-m>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-m>'           " replace visual C-n
let g:VM_mouse_mappings = 1
" ========= commandbar settings ==========
" Default keys

call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
            \ 'border': 'rounded',
            \ 'highlighter': wilder#basic_highlighter(),
            \ 'highlights': {
                \   'border': 'Normal',
                \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
                \ },
                \ 'left': [
                    \   ' ', wilder#popupmenu_devicons(),
                    \ ],
                    \ 'right': [
                        \   ' ', wilder#popupmenu_scrollbar(),
                        \ ],
                        \ })))

" ========= scrollbar settings ==========
" more settings --> :h Scrollbar.nvim
augroup ScrollbarInit
    autocmd!
    autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
    autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
    autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_shape = {
            \ 'head': '',
            \ 'body': '█',
            \ 'tail': '',
            \ }

" ========= lspsaga.nvim settings ==========
nnoremap <silent> gf <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent> gx <cmd>Lspsaga code_action<cr>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> gr :Lspsaga rename<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent> gp :Lspsaga preview_definition<CR>
nnoremap <silent> go :Lspsaga show_line_diagnostics<CR>


nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" show hover doc
nnoremap <silent> K <cmd>Lspsaga hover_doc<CR>

" highlight link LspSagaFinderSelection Search

" ========= coc.nvim witelist CocGroup
" augroup CocGroup
"   autocmd!
"   " disable coc.nvim
"   autocmd BufNew,BufRead,BufReadPost * execute "CocDisable"
"   " witelist below
"   autocmd BufNew,BufEnter,BufRead,BufReadPost *.go execute "CocDisable"
" augroup end
" ========= END coc.nvim witelist settings ==========


" ========= illuminate settings ==========
" Time in milliseconds (default 0)
let g:Illuminate_delay = 3000
hi illuminatedWord cterm=underline gui=underline
" hi illuminatedCurWord cterm=italic gui=italic
" augroup illuminate_augroup
"     autocmd!
"     autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
" augroup END

" ============ echodoc.vim settings =======
" set cmdheight=2

" Or, you could use neovim's floating text feature.
" let g:echodoc#enable_at_startup = 1
" let g:echodoc#type = 'floating'
" " To use a custom highlight for the float window,
" " change Pmenu to your highlight group
" highlight link EchoDocFloat Pmenu

" ============= go.nvim settings ==========
"
" autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
" require('go').setup()
"

" ============= vim-move settings ==========
let g:move_key_modifier = 'C'
"
" ============= vimspector(go) settings ==========
" 
let g:vimspector_enable_mappings = 'HUMAN'
" default keymap below
" | KEY          | FUNCTION                                                  | API                                                          |
" | :----------- | :-------------------------------------------------------- | :----------------------------------------------------------- |
" | `F5`         | When debugging, continue. Otherwise start debugging.      | `vimspector#Continue()`                                      |
" | `F3`         | Stop debugging.                                           | `vimspector#Stop()`                                          |
" | `F4`         | Restart debugging with the same configuration.            | `vimspector#Restart()`                                       |
" | `F6`         | Pause debuggee.                                           | `vimspector#Pause()`                                         |
" | `F9`         | Toggle line breakpoint on the current line.               | `vimspector#ToggleBreakpoint()`                              |
" | `<leader>F9` | Toggle conditional line breakpoint on the current line.   | `vimspector#ToggleBreakpoint( { trigger expr, hit count expr } )` |
" | `F8`         | Add a function breakpoint for the expression under cursor | `vimspector#AddFunctionBreakpoint( '<cexpr>' )`              |
" | `<leader>F8` | Run to Cursor                                             | `vimspector#RunToCursor()`                                   |
" | `F10`        | Step Over                                                 | `vimspector#StepOver()`                                      |
" | `F11`        | Step Into                                                 | `vimspector#StepInto()`                                      |
" | `F12`        | Step out of current function scope                        | `vimspector#StepOut()`                                       |
nmap <leader>vl :call vimspector#Launch()<CR>
nmap <leader>vr :VimspectorReset<CR>
nmap <leader>ve :VimspectorEval
nmap <leader>vw :VimspectorWatch
nmap <leader>vo :VimspectorShowOutput
nmap <leader>vi <Plug>VimspectorBalloonEval
xmap <leader>vi <Plug>VimspectorBalloonEval
setlocal nobuflisted

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB', 'vscode-node-debug2' ]

" for normal mode - the word under the cursor
" nmap <Leader>di <Plug>VimspectorBalloonEval
" " for visual mode, the visually selected text
" xmap <Leader>di <Plug>VimspectorBalloonEval

" ============= nvim-dap settings ==========

nnoremap <silent><leader>da <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent><leader>dc <Cmd>lua require'dap'.continue()<CR>

" ========= floaterm settings[NOT USED] ==========
" autocmd User FloatermOpen        " triggered after opening a new/existed floaterm
" hi FloatermNC guibg=gray

" ========= toggleterm settings ==========
autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><leader>tt <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><leader>gg <Cmd>lua _LAZYGIT_TOGGLE()<CR>

" ========= current cursor settings ==========
" " Twins of word under cursor:
" let g:vim_current_word#highlight_twins = 1
" The word under cursor:
" let g:vim_current_word#highlight_current_word = 1
" autocmd BufAdd NERD_tree_*,your_buffer_name.rb,*.js :let b:vim_current_word_disabled_in_this_buffer = 1
" " hi CurrentWord ctermbg=53
" " hi CurrentWordTwins ctermbg=237
" " let g:vim_current_word#highlight_only_in_focused_window = 1
" " hi CurrentWordTwins guifg=#XXXXXX guibg=#XXXXXX gui=underline,bold,italic ctermfg=XXX ctermbg=XXX cterm=underline,bold,italic
" hi CurrentWord guifg=0 guibg=163 gui=underline,bold,italic ctermfg=0 ctermbg=163 cterm=underline,bold,italic

" ========== vim-cursor settings ===========
" let g:cursorword_highlight = 0
let g:cursorword_delay = 0
" autocmd Colorscheme * highlight CursorWord0 cterm=underline gui=underline ctermbg=52 guibg=#303030
" autocmd Colorscheme * highlight CursorWord1 cterm=underline gui=underline ctermbg=52 guibg=#303030
" highlight CursorWord0 cterm=underline gui=underline guisp=#ebcb8b
" highlight CursorWord1 cterm=underline gui=underline guisp=#ebcb8b
" augroup cursorword
"   autocmd!
"   autocmd VimEnter,ColorScheme * call MyHighlight()
" augroup END
" 
" function! MyHighlight() abort
"   highlight CursorWord0 cterm=bold,underline gui=bold,underline
" 
"   redir => out
"     silent! highlight CursorLine
"   redir END
"   execute 'highlight CursorWord1 cterm=underline gui=underline'
"     \ matchstr(out, 'ctermbg=#\?\w\+')
"     \ matchstr(out, 'guibg=#\?\w\+')
" endfunction

" ========== vim-cursor settings ===========
" lua require("lsp_config")
" 
" autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
" autocmd BufWritePre *.go lua goimports(1000)


" autocmd vimenter * NERDTree       " NERDTree automatically when vim starts up
" map <C-n> :NERDTreeToggle<CR>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
" " auto refresh nerdtree when file changed
" autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

" !! 弃用NerdTree 改为下面的nvim-tree.lua
" ==========
" map <C-n> :call NERDTreeToggleAndRefresh()<CR>
" set splitright        " nerdtree split right instead of left
" 
" function NERDTreeToggleAndRefresh()
"   :NERDTreeToggle
"   if g:NERDTree.IsOpen()
"     :NERDTreeRefreshRoot
"   endif
" endfunction
" =========

" autoload vim-workspace plugin
" let g:workspace_autocreate = 1
" nnoremap <leader>f :ToggleWorkspace<CR>
" let g:workspace_session_name = 'Session.vim'
" let g:workspace_autosave_always = 1
" let g:workspace_session_directory = $HOME . '/.vim/sessions/'
"
" ========== nvim-tree.lua settings ===========
" defalut hotkeys actions: https://github.com/kyazdani42/nvim-tree.lua#default-actions
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 0 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 0 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 0 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 0 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 0 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 0 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
            \   'filetype': [
                \     'notify',
                \     'packer',
                \     'qf'
                \   ],
                \   'buftype': [
                    \     'terminal'
                    \   ]
                    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 0, 'Makefile': 0, 'MAKEFILE': 0 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
            \ 'git': 1,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 1,
            \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
            \ 'default': '',
            \ 'symlink': '',
            \ 'git': {
                \   'unstaged': "✗",
                \   'staged': "✓",
                \   'unmerged': "",
                \   'renamed': "➜",
                \   'untracked': "★",
                \   'deleted': "",
                \   'ignored': "◌"
                \   },
                \ 'folder': {
                    \   'arrow_open': "",
                    \   'arrow_closed': "",
                    \   'default': "",
                    \   'open': "",
                    \   'empty': "",
                    \   'empty_open': "",
                    \   'symlink': "",
                    \   'symlink_open': "",
                    \   }
                    \ }


nnoremap <C-n> :NvimTreeToggle<CR>
" conflict with my vim-go plugin and create new file
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

let g:auto_save = 1  " enable AutoSave on Vim startup

let g:instant_markdown_slow = 1

set t_Co=256

" --------- nerdcommenter plguin settings
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" ============================== END Plugins settings ============================== 


" ============================== Autocmd/Function settings ============================== 
augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
" auto reload when modified vimrc file (Windows)
" autocmd! bufwritepost _vimrc source %
" auto reload when modified vimrc file (Linux)
autocmd! bufwritepost $HOME/.config/nvim/init.vim source %

" some error occur
" au CursorHold * checktime  
" autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
            \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
" --------------------------------------------------------------------------------------------

au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber number    " use absolute line number.
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunc
" remap <C-n> to switch between relative and absolute line number.
" nnoremap <C-n> :call NumberToggle()<cr>

" ============= Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
elseif filereadable(expand("~/.config/nvim/vimrc.bundles")) " neovim
    source ~/.config/nvim/vimrc.bundles
endif
au BufNewFile,BufRead *.vundle set filetype=vim

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

" indent for different filetype
autocmd FileType php,ruby,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
" autocmd FileType go nmap <leader>t  <Plug>(go-test)

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

filetype plugin on
filetype indent on
filetype on
filetype plugin indent on


if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

" Automatically set paste mode in Vim when pasting in insert mode
function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" delete Redundant Space when saving Python file
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

autocmd FileType go nmap <Leader>rr :!go run %<CR>

" ============================== END Autocmd settings ============================== 


" ============================== External Lua settings ============================== 
lua require('AGou')
" ============================== END External Lua settings ============================== 


" ============================== External settings ============================== 
"
" =========  external keymap settings ==========
if filereadable($HOME . "/.config/nvim/keymaps.vim")
    source $HOME/.config/nvim/keymaps.vim
endif

" 
if filereadable($HOME . "/.config/nvim/shpy-autoheader.vim")
    source $HOME/.config/nvim/shpy-autoheader.vim
endif

" =========== load coc-go plug config ===========
" if filereadable($HOME . ".config/nvim/coc-go.vim")
"     source ~/.config/nvim/coc-go.vim
" endif

" ========= Other custom external setting config(Optional) ==========
if filereadable($HOME . "/.config/nvim/custom.vim")
    source $HOME/.config/nvim/custom.vim
endif

" ====================================================================== 
" ============================== THE END. ============================== 
" ====================================================================== 
