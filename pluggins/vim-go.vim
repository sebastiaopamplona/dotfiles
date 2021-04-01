set autowrite 														" writes the content of the file automatically if you call :make

autocmd FileType go nmap <leader>8 <Plug>(go-run)
autocmd FileType go nmap <leader>9 <Plug>(go-build)
autocmd FileType go nmap <leader>0 <Plug>(go-test)
