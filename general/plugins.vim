call plug#begin('~/.config/nvim/plugged')

	"Plug 'mbbill/undotree'

	" Code completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }	
	Plug 'scrooloose/nerdcommenter'
	"Plug 'kien/ctrlp.vim'
	"Plug 'preservim/nerdtree'
	
	" Navigation and searching
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	Plug 'francoiscabrol/ranger.vim'
	"Plug 'scrooloose/nerdtree'
	"Plug 'christoomey/vim-tmux-navigator'
	"Plug 'rking/ag.vim'

	" Git
	Plug 'airblade/vim-gitgutter'

	" Colors and themes
	Plug 'itchyny/lightline.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'vim-airline/vim-airline'
	"Plug 'autoload/onedark.vim'
	"Plug 'joshdick/onedark.vim'
	"Plug 'vim-airline/vim-airline-themes'

	" Misc
	Plug 'rbgrouleff/bclose.vim' " Deleting a buffer witout closing the window
	"Plug 'sheerun/vim-polyglot' " Solid syntax and indentation support
	Plug 'ap/vim-buftabline'

call plug#end()


