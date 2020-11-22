set exrc
set secure
set ma

" Some basic stuff
syntax on
set number
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

imap jj <Esc>


" For the sidebar
set <A-1>=1
nmap <A-1> :NERDTreeToggle<CR>

" Comment and uncomment using Ctrl + /
set <F13>=
noremap <F13> :call NERDComment(0,"toggle")<CR>
"filetype plugin on

" autocomplete
let jedi#show_call_signatures = 0
let jedi#documentation_command = ""
autocmd FileType python setlocal completeopt-=preview

" goto definition
set mouse=a
let g:jedi#goto_command = "<C-LeftMouse>"
map <C-b> <C-LeftMouse>
let g:jedi#use_tabs_not_buffers = 1
nnoremap J :tabp<CR>
nnoremap K :tabn<CR>

" Jump to previous location
set <A-->=-
noremap <A--> <C-O>
set <A-_>=_
noremap <A-_> <C-I>

" For fuzzy file search
let g:ctrlp_map='<C-O>'
let g:ctrlp_cmd='CtrlPMixed'

" For search everywhere
set <A-F>=f
nnoremap <A-F> :Ack! -S --python 
nnoremap <C-F> :Ack!  %<Left><Left>

" Remove highlighting of the offending word with ALE
let g:ale_set_highlights = 0

" So that vim-gitgutter will update the screen more often
set updatetime=100

" Getting F12 to show/hide a terminal buffer
source ~/.vim/pack/vimcharm/start/load_terminal.vim
map <F12> :call LoadTerminal()<CR>

" For refactors with ropevim
source ~/.vim/pack/vimcharm/start/python_ropevim.vim 
nnoremap <C-z> :RopeUndo<CR>                                                                       
set <A-z>=z
map <A-z> :RopeRedo<CR>                                                                            
map <F6> :RopeRename<CR>

" for auto-save
 " autosave                                                                                         
let g:auto_save = 1                                                                                
let g:auto_save_events = ["InsertLeave", "TextChanged"] 

" To make it look like PyCharm
autocmd vimenter * ++nested colorscheme gruvbox

" for code folding
set foldmethod=indent
set foldlevelstart=99
nnoremap - za
map _ zM
map + zR
