export PATH=/usr/local/bin:/usr/bin:/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sebastiaopamplona/.oh-my-zsh"

ZSH_THEME="avitseb"

# Toggle the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_DISABLE_COMPFIX="true"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	#vi-mode
)
#bindkey -v

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8


## General
alias vz="nvim ~/.zshrc"
alias sz="source ~/.zshrc"
alias vv="nvim ~/.config/nvim/init.vim"
alias svv="source ~/.config/nvim/init.vim"
alias p3="python3"
alias pbc="tr -d '\n' | pbcopy" # <- change for ubuntu

## Git
alias ggra="git log --all --decorate --graph"
alias gud="git fetch && git rebase && git submodule update --init"
alias gfix="ga -A && git commit --amend --no-edit && git push -f"
alias gfr="git fetch && git rebase origin/master"
alias ga="git add -p"
alias ghard="git reset --hard HEAD"
alias gsoft="git reset --soft HEAD^"


# Env Variables
export EDITOR="nvim"

v() {
	if [ -z ${1} ];then local target=".";else local target=$1;fi

	nvim $target
}

gcoo() {
	gco $(gb | fzf)
}

[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. ~/.dotfiles_pers/.aliases
. ~/.dotfiles_pers/.functions
. ~/.dotfiles_pers/.env_vars
