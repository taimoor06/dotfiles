export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

eval "$(zoxide init bash)"

export INPUTRC="/home/taimoor/.config/shell/inputrc"
export HISTFILE="/home/taimoor/.cache/bash/history"
export LESSHISTFILE="-"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export FILES="thunar"
export PAGER="less"

alias ez="nvim $HOME/.config/bash/.bashrc"
alias ezp="nvim $HOME/.config/bash/.bash_profile"

# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi
