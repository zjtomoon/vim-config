"===
"=== Editor config
"===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"set list
syntax on
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030
set number
set relativenumber
set cursorline
set backspace=indent,eol,start
set splitbelow
set splitright
set wrap
set showcmd
set wildmenu
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set hlsearch
exec "nohlsearch"
set incsearch
"ignore uppercase and lowercase
set ignorecase
set smartcase
set completeopt=longest,noinsert,menuone,noselect,preview
set previewheight=5
set scrolloff=5

" ===
" " === Terminal Behaviors
" " ===
 let g:neoterm_autoscroll = 1
 tnoremap <C-N> <C-\><C-N>
 tnoremap <C-O> <C-\><C-N><C-O>
 let g:terminal_color_0  = '#000000'
 let g:terminal_color_1  = '#FF5555'
 let g:terminal_color_2  = '#50FA7B'
 let g:terminal_color_3  = '#F1FA8C'
 let g:terminal_color_4  = '#BD93F9'
 let g:terminal_color_5  = '#FF79C6'
 let g:terminal_color_6  = '#8BE9FD'
 let g:terminal_color_7  = '#BFBFBF'
 let g:terminal_color_8  = '#4D4D4D'
 let g:terminal_color_9  = '#FF6E67'
 let g:terminal_color_10 = '#5AF78E'
 let g:terminal_color_11 = '#F4F99D'
 let g:terminal_color_12 = '#CAA9FA'
 let g:terminal_color_13 = '#FF92D0'
 let g:terminal_color_14 = '#9AEDFE'
"
"===
"=== keymap
"===
let g:mapleader=" "
map s <nop>
map S :w<CR>
map Q :q<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
"move between splited windows
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
"switch between the labels
map tb :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

"change the size of splited window
map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize -5<CR>
map <LEADER><right> :vertical resize+5<CR>
"down-search and up-serch
noremap = nzz
noremap - Nzz
nmap <LEADER>t :sp<CR> :term<CR>
nmap tt :NERDTree<CR>
nmap te :CocCommand explorer<CR>
nmap bc <C-o>
noremap r :call CompileRun()<CR>
function CompileRun()
		exec "w"
		if &filetype == 'c'
			exec "!g++ % -o %<"
			:sp
			:term ./%<
		elseif &filetype == 'cpp'
			exec "!g++ % -wall -o %<"
			:sp
			:term ./%<
		elseif &filetype == 'sh'
			:!time bash %
		elseif &filetype == 'go'
			set splitbelow
			:sp
			:term go run .
		elseif &filetype == 'rust'
			set splitbelow
			:sp
			:term cargo run .
		elseif &filetype == 'typescript'
			exec "!tsc %  %<"
			:sp
			:term node ./%<
		endif
endfunction

"====
"==== vim-plug 
"====
call plug#begin('~/.vim/plugged')


"vim-startify
Plug 'mhinz/vim-startify'


"vim-airline
Plug 'vim-airline/vim-airline'
Plug 'powerline/powerline' 

"vim-beautify
Plug 'luochen1990/rainbow'

"Editor Enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

 " Status line
 Plug 'theniceboy/eleline.vim'
 Plug 'ojroques/vim-scrollstatus'

 " File navigation
 "Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 "Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'junegunn/fzf.vim'
 "Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
 Plug 'kevinhwang91/rnvimr'
 Plug 'airblade/vim-rooter'
 Plug 'pechorin/any-jump.vim'

 " Taglist
 Plug 'liuchengxu/vista.vim'

	"nvim-lsp
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'

call plug#end()

" config for nvim-lsp
lua require("lsp")
lua require("lsp-installer")


let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
color desert
"vim-plug plugins config
"
"vim-go
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

"NERDTree
"map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ===
" " === vim-easymotion
" " ===
 let g:EasyMotion_do_mapping = 0
 let g:EasyMotion_do_shade = 0
 let g:EasyMotion_smartcase = 1

" ===
" " === xtabline
" " ===
 let g:xtabline_settings = {}
 let g:xtabline_settings.enable_mappings = 0
 let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
 let g:xtabline_settings.enable_persistance = 0
 let g:xtabline_settings.last_open_first = 1
 noremap to :XTabCycleMode<CR>
 noremap \p :echo expand('%:p')<CR

"========================================================================================================================================


