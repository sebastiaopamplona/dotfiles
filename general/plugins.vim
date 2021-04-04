call plug#begin('~/.config/nvim/plugged')

	" Code completion
	
	" Navigation and searching
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" Git
	Plug 'airblade/vim-gitgutter'

	" Colors and themes

	" Misc

call plug#end()


