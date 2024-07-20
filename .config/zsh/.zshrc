# Zoxide for better directory navigation
eval "$(zoxide init zsh)"

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PROMPT='%B%F{10} %B%F{015}%~%B%F{006} 󰅂%b%F{015} '

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE="$HOME/.cache/zsh/history"
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

export LESSHISTFILE="-"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export FILES="thunar"
export PAGER="less"
export BAT_THEME="ansi"

###---------- PLUGINS ----------###

source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$HOME/.config/zsh/plugins/vi-mode.zsh"
source "$HOME/.config/shell/aliasrc"

alias ez="nvim $HOME/.config/zsh/.zshrc"
alias ezp="nvim $HOME/.config/zsh/.zprofile"

source /home/taimoor/.config/broot/launcher/bash/br
