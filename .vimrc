"------------------------------------------------------------------------------------- 
set ai " autoindent 
set si " smartindent 
set cindent " do C-style indenting 
set tabstop=4 " tab spacing (settings below are just to unify it) 
"set softtabstop=4 " unify 
set shiftwidth=4 " unify 
set expandtab 
set formatoptions+=mM " so that vim can reformat multibyte text (e.g. Chinese) 
set nu
set ruler
set showmatch

set foldmethod=syntax  "代码折叠 za
set foldlevel=100  "启动vim时不要自动折叠代码

"自动换行
if (has("gui_running")) "图形界面下的设置
	set nowrap
	"添加水平滚动条。如果你指定了不折行，那为窗口添加一个水平滚动条就非常有必要了
	set guioptions+=b
else "字符界面下的设置
   set wrap
endif

"------------------------------------------------------------------------------------- 
" colors 
"------------------------------------------------------------------------------------- 
"set background=dark " use a dark background 
syntax on " syntax highlighting 
set hlsearch

map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double

set nocp
filetype on
if has('mouse')
	set mouse=a
endif
behave mswin


autocmd FileType php set omnifunc=phpcomplete#CompletePHP  "PHP代码提示
set completeopt=longest,menu

" NERDTree
"map <F10> :NERDTreeToggle<CR>
map <silent> ne :NERDTreeToggle<CR>

" taglist
let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Use_Right_Window = 1  
map <silent> tl :TlistToggle<cr>

"autocomplpop.vim & supertab.vim 插件设置
let g:AutoComplPop_IgnoreCaseOption=1
set ignorecase


"-- omnicppcomplete setting --
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

"颜色方案
set t_Co=256
colorscheme desert
