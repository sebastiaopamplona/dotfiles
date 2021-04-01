" open ranger when vim opens a director
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

" nmap <leader>r :RangerCurrentDirectory<CR>
nmap <leader>r :RangerCurrentFile<CR>

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1


