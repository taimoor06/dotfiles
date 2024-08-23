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
export FILES="thunar"
export PAGER="less -r"
export BAT_THEME="gruvbox-dark"

###---------- PLUGINS ----------###
source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$HOME/.config/zsh/plugins/vi-mode.zsh"
source "$HOME/.config/shell/aliasrc"

alias ez="nvim $HOME/.config/zsh/.zshrc"
alias ezp="nvim $HOME/.config/zsh/.zprofile"

###--------- Colored Manpages ---------##

export LESS_TERMCAP_mb="$(printf '%b' '31m')"
export LESS_TERMCAP_md="$(printf '%b' '[36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '\e[1;3;40;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

#eval "$(starship init zsh)"
#echo "Battery: $(sb-battery)"

#echo "You arent the the only one SUFFERING\nWhy care? Millions die silently like you will."
#fastfetch -l small -c ~/.config/fastfetch/small.json
