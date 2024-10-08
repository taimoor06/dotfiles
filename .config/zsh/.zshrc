eval "$(fzf --zsh)"
# Zoxide for better directory navigation
eval "$(zoxide init zsh)"
#PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PROMPT='%B%F{10} %B%F{015}%~%B%F{006} 󰅂%b%F{015} '

# Git branches in prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
RPROMPT='%F{green}%*%f'

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
HISTFILE="$HOME/.cache/zsh/history"

alias ez="nvim ~/.config/zsh/.zshrc"
alias sa="source ~/.config/zsh/.zshrc; echo 'ZSH aliases sourced.'"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

###---------- PLUGINS ----------###

source "$HOME/.config/shell/aliasrc"
source "$HOME/.config/zsh/vi-mode.zsh"
source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
