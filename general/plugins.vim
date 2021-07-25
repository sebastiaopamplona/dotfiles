call plug#begin('~/.config/nvim/plugged')

	" Code completion
	
	" Navigation and searching
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	
	Plug 'junegunn/fzf.vim'

	" Git
	Plug 'airblade/vim-gitgutter'
	
	" Colors and themes
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
	Plug 'vim-airline/vim-airline'

	" Misc

call plug#end()


