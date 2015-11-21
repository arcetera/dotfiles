"               __                
"  ___   __  __/\_\    ___ ___    
"/' _ `\/\ \/\ \/\ \ /' __` __`\  
"/\ \/\ \ \ \_/ \ \ \/\ \/\ \/\ \ 
"\ \_\ \_\ \___/ \ \_\ \_\ \_\ \_\
" \/_/\/_/\/__/   \/_/\/_/\/_/\/_/ 
execute pathogen#infect()
set bg=dark
syntax on
colorscheme CodeFactoryv3
set number
set tabstop=4
set softtabstop=4
set expandtab
set foldenable
set foldlevelstart=10
set foldnestmax=10
set laststatus=2
nnoremap <space> za
set foldmethod=indent
nnoremap j gj
nnoremap k gk
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
let g:syntastic_error_symbol = "X"
let g:syntastic_warning_symbol = "!"
let g:startify_custom_header =
  \ map(split(system('fortune dbag | cowsay'), '\n'), '"   ". v:val') + ['','']
let g:lightline = {
      \ 'colorscheme': wombat
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }
set noshowmode
let g:ycm_global_ycm_extra_conf = '/home/arc/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1
