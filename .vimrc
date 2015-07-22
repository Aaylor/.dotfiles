"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				VUNDLE
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""" Vundle itself
Plugin 'gmarik/Vundle.vim'


"""" Utility
Plugin 'bling/vim-airline'                  " Better command bar 
Plugin 'Lokaltog/vim-easymotion'            " Move faster
Plugin 'majutsushi/tagbar'                  " Displays tags
Plugin 'Raimondi/delimitMate'               " Add closing quote, braces, ...
Plugin 'scrooloose/nerdcommenter'           " Fast comment
Plugin 'scrooloose/nerdtree'                " Folder Tree
Plugin 'scrooloose/syntastic'               " Syntax checker
Plugin 'sheerun/vim-polyglot'
Plugin 'Shougo/vimproc.vim'                 " Needed by vimshell
Plugin 'Shougo/vimshell.vim'                " Shell in vim
Plugin 'sukima/xmledit'                     " Enhanced xml editition
Plugin 'tpope/vim-fugitive'                 " Git
Plugin 'tpope/vim-surround'                 " Add/Modify/Delete surrounding quote, braces, ...
Plugin 'xolox/vim-easytags'                 " Tag syntax color
Plugin 'xolox/vim-misc'                     " Needed by Easytags
Plugin 'Valloric/YouCompleteMe'             " Autocompletion
Plugin 'vim-scripts/UltiSnips'              " Snippets
Plugin 'wincent/command-t'                  " Fast file search

" Ocaml
Plugin 'rgrinberg/vim-ocaml'

Plugin 'gregsexton/gitv'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/DoxyGen-Syntax'
Plugin 'gcavallanti/vim-noscrollbar'
Plugin 'the-lambda-church/coquille'
Plugin 'vim-scripts/javacomplete'
Plugin 'guns/vim-sexp'
Plugin 'chrisbra/unicode.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-dispatch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bruno-/vim-man'
Plugin 'mhinz/vim-startify'
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()
filetype plugin indent on



syntax on

" Opam
let g:opamshare  = substitute(system('opam config var share'),'\n$','',"'")

execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "helptags " . g:opamshare . "/merlin/vim/doc"

" Ocp-indent
execute "source " . g:opamshare . "/vim/syntax/ocp-indent.vim"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				CONFIGURATION
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent					          " Set auto indentation
set background=dark				        " Set background color
set backspace=indent,eol,start	
set cinoptions+=j1,J1			        " Set the c-indenting file
set cmdheight=2					          " Set the height of the command bar
set colorcolumn=80
set cursorline					          " Highlight the current line
set encoding=utf-8				        " Set utf-8 as standard encoding
set expandtab					            " Replace tabs with spaces
set fileformats=unix
set ff=unix						            " Set unix as the standard file type
set hlsearch					            " Set highlight search results
set ignorecase					          " Ignore case for search
set laststatus=2				          " Always show the status line
set lazyredraw
set list
set listchars=tab:\ \ ,trail:·
set magic
set mouse=a
set nobackup
set nofoldenable
set noswapfile
set number                      " Display line number
set numberwidth=3
set preserveindent
set relativenumber              " Show the relative number lin
set ruler                       " Display the cursor position
set showcmd                     " Display the current command
set showmatch
set shiftround
set shiftwidth=4				        " Set width indentation
set showbreak=↪
set si
set softtabstop=4				        " Set tabulations width
set smartindent					        " Smart indentation
set smarttab					          " Smart tabulations
set spelllang=fr,en             " Spell languages
set splitright
set tabstop=4					          " Set tabulations width
set textwidth=79                " Line longer than 79 columns will be broken
set title                       " Show title
set ttyfast
set wildignore=*~,*.swp,*.class " Ignore
set wildignore+=*.o

set exrc
set secure


if has("gui_running")
  set guifont=PT\ Mono:h10
	let g:Powerline_symbols = 'fancy'
	set fillchars+=stl:\ ,stlnc:\

	if has("mac")
		set transparency=30
	endif
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				COLORSCHEME
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
colorscheme hybrid



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				MAPPING
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" debug
map <F9>  :source ~/.vimrc<CR>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>




let mapleader=","

"" Plugins Mapping
" Command-T
map <leader>tf :CommandT<CR>
map <leader>tt :CommandTTag<CR>

" Coq
map <leader>qn :CoqNext<CR>
map <leader>qu :CoqUndo<CR>
map <leader>qc :CoqToCursor<CR>

" Dispatch
map <leader>m :Make<CR>

" Merlin
map <leader>mt :TypeOf<CR>
map <leader>az :MerlinErrorCheck<CR>

" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>

" TagBar
nmap <leader>tgt :TagbarToggle<CR>

" Vimfugitive
map <leader>gs :Gstatus<CR>

" Vimshell
map <leader>vsn :VimShell -split -buffer-name="vimshell"<CR>
map <leader>vsi :VimShellInteractive<CR><ESC><C-w><C-w><ESC>
map <leader>vss :VimShellSendString<CR>
map <leader>vsp vip<leader>vss


"" Others
" Buffer Managin
map <leader>xa :badd
map <leader>xn :bnext<CR>
map <leader>xs :sbnext<CR>
map <leader>xp :bprevious<CR>
map <leader>xv :sbprevious<CR>

" Clear highlight search
nnoremap <leader><space> :nohlsearch<CR>

" Completion
inoremap <C-space> <C-x><C-o>

" Disable arrow keys
map  <Left>   <NOP>
imap <Left>   <NOP>
map  <Right>  <NOP>
imap <Right>  <NOP>
map  <Up>     <NOP>
imap <Up>     <NOP>
map  <Down>   <NOP>
imap <Down>   <NOP>

" Display every opened buffer
nnoremap ≈ :ls!<CR>:buffer<space>

" Errors
map  <F1> :lprev<CR>
imap <F1> :lprev<CR>
map  <F2> :lnext<CR>
imap <F2> :lnext<CR>
map  <F3> :Errors<CR>
imap <F3> :Errors<CR>

" Indentation

" Mark
nnoremap <leader>st :SignatureToggle<CR>

" Move up and down on long wrapped line
nnoremap j gj
nnoremap k gk

" Reselect visual block after indentation changes
vnoremap < <gv
vnoremap > >gv

" Saving
map  <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Search
map <space> /
map <c-space> ?

" Spell checking
"nnoremap <silent> <F4> :set spell spelllang=en,fr<CR>
"nnoremap <silent> <F5> :set nospell<CR>

" Tab Managing
map     <leader>tn :tabnew<CR>
map     <leader>to :tabonly<CR>
map     <leader>tc :tabclose<CR>
map     <leader>tm :tabmove
noremap <C-l> :tabnext<CR>
imap    <C-l> <ESC>:tabnext<CR>
noremap <C-h> :tabprevious<CR>
imap    <C-h> <ESC>:tabprevious<CR>

" Better copy/paster
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				FUNCTIONS
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set new indentation
function! Indentation(n)
  execute "set tabstop=".a:n
  execute "set softtabstop=".a:n
  execute "set shiftwidth=".a:n
endfunction

" Search for makefile, and execute it with given args
" http://stackoverflow.com/questions/729249/how-to-efficiently-make-with-vim
function! SetMkfile()
  let filemk = "Makefile"
  let pathmk = "./"
  let depth = 1
  while depth < 4
    if filereadable(pathmk . filemk)
      return pathmk
    endif
    let depth += 1
    let pathmk = "../" . pathmk
  endwhile
  return "."
endfunction
command! -nargs=* Make | let $mkpath = SetMkfile() | make <args> -C $mkpath | cwindow 10


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				PLUGIN CONFIGURATION
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Clang complete
let g:clang_use_library = 1
let g:clang_complete_macros = 1


" Easy Tags
set tags=./.tags
let g:easytags_async = 1                              " update in bg
let g:easytags_cmd = '/usr/local/bin/ctags'
let g:easytags_dynamic_files = 2                      " local tags
let g:easytags_events = ['BufWritePost', 'BufRead']
let g:easytags_python_enabled = 1

" Indent-guides
let g:indent_guides_auto_colors = 0

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\.o$', '\~$', '\.cm..?$']
let NerdTreeDirArrows = 1


" Startify
let g:startify_bookmarks = ['~/.vimrc']
let g:startify_custom_header = map(split(system('cowsay -f $(/bin/ls /usr/local/Cellar/cowsay/3.03/share/cows | rl | tail -n 1 | cut -d"." -f1) "$(fortune -s)"'), '\n'), '"   ".v:val') + ['','']


" Syntastics
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_error_symbol = "✗✗"
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_warning_symbol = "λλ"


" Youcompleteme
let g:ycm_auto_trigger = 1
let g:ycm_collect_identifiers_from_tags_file = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/external/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_filetype_blacklist = { '*' : 1 }
let g:ycm_filetype_whitelist = { 'cpp' : 1, 'python' : 1, 'c' : 1, 'ocaml' : 1, 'xml' : 1, 'cpp.doxygen' : 1, 'c.doxygen' : 1, 'java' : 1, 'tex' : 1 }
let g:ycm_min_num_of_chars_for_completion = 1



" Vim-airline
let g:airline_theme="molokai"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

function! NoScrollBar(...)
  let w:airline_section_z = "%{noscrollbar#statusline(9,'■','◫',['◧'],['◨'])}"
endfunction
call airline#add_statusline_func('NoScrollBar')


" Vim-shell
if (has("gui_running"))
  let g:vimshell_editor_command = 'gvim'
else
  let g:vimshell_editor_command = 'vim'
endif
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

let g:livepreview_previewer = 'open -a Preview'





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 				AUTOCMD
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("autocmd")
  au BufRead,BufNewFile *.md set filetype=markdown

  au FileType css         setlocal omnifunc=csscomplete#CompleteCSS
  au FileType html        setlocal omnifunc=htmlcomplete#CompleteTags
  au FileType js          setlocal omnifunc=javascriptcomplete#CompleteJS
  au FileType php         setlocal omnifunc=phpcomplete#CompletePHP
  au FileType xml         setlocal omnifunc=xmlcomplete#CompleteTags

  au FileType coq         call Indentation(2)

  au FileType ocaml       call Indentation(2)
  au FileType ocaml       map       <leader>ib :call OcpIndentBuffer()<CR>
  au FileType ocaml       vnoremap  <leader>ir :call OcpIndentRange()<CR>

  au FileType python            call Indentation(2)
  au FileType ruby              call Indentation(2)
  au FileType sh                call Indentation(2)
  au FileType xml,html,xsd,xslt call Indentation(2)
  au FileType yml               call Indentation(2)
  au FileType vim               call Indentation(2)

  au BufNewFile,BufRead *.tex set makeprg=pdflatex\ %\ &&\ open\ %:r.pdf
  au FileType xml,html,xsd  let b:loaded_delimitMate = 1

  " Autoresize gui tabs
  if has("gui_running")
    autocmd VimResized * wincmd =
  endif
endif
