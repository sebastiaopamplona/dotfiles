export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/opt/coreutils/libexec/gnubin:$HOME/go/bin:.nvm/versions/node/v16.16.0/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="agnoster"
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

# Controls whether the prompt is redrawn when switching to a different input mode.
# If this is unset, the mode indicator will not be updated when changing to a
# different mode.
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Controls whether the cursor style is changed when switching to a different input mode.
VI_MODE_SET_CURSOR=true

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	# vi-mode
)
#bindkey -v

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

## General
alias vz="nvim ~/.zshrc"
alias sz="source ~/.zshrc"
alias vv="nvim ~/.config/nvim/init.lua"
alias svv="source ~/.config/nvim/init.lua"
alias p3="python3"
alias pbc="tr -d '\n' | pbcopy" # <- change for ubuntu
alias dif="colordiff"
alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; print (ul.quote_plus(sys.argv[1]))"'

## Git
alias ggra="git log --all --decorate --graph"
alias gud="git fetch && git rebase && git submodule update --init"
alias gfix="ga -A && git commit --amend --no-edit && git push -f"
alias gfr="git fetch && git rebase origin/master"
alias ga="git add -p"
alias ghard="git reset --hard HEAD"
alias gsoft="git reset --soft HEAD^"
function gpo() {git push --set-upstream origin $(git_current_branch)}

# Env Variables
## General
export EDITOR="nvim"

v() {
	if [ -z ${1} ];then local target=".";else local target=$1;fi

	nvim $target
}

gcoo() {
	gco $(gb | fzf)
}

ggc() {
	scan=""
	
	# scan for unwanted code
	for f in $(gst -s | grep 'M  \|A  ' | awk '{print $2}')
	do
		grepresult=$(cat $f | grep -ni 'TODO(SP)\|FIXME(SP)\|debugdata\|\[DEBUG\]\|console.log')
		if [ "${grepresult}" != "" ]
		then
			scan="${scan}\n${f}\n${grepresult}\n"
		fi
	done

	# exit if there's unwanted code
	if [ ${#scan} > 0 ] && [ "${1}" != "-s" ]
	then
		echo "Changes to be committed have unwanted changes.\nRun ggc with -s to skip these."
		echo $scan
		return 1
	fi

	git commit -v
}

grc () {
  nvim $1 && git add $1
  echo "${1} <- conflict resolved and staged!"
}

jwt-decode() {
  sed 's/\./\n/g' <<< $(cut -d. -f1,2 <<< $1) | base64 --decode | jq
}

# optional

[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tesla specific (THE ORDER OF THESE 3 FILES MATTERS)
. "$HOME/.dotfiles_tesla/.env_vars.sh"
. "$HOME/.dotfiles_tesla/.aliases.sh"
. "$HOME/.dotfiles_tesla/.functions.sh"
