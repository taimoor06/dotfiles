export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
export ZDOTDIR="$HOME/.config/zsh"

export LESSHISTFILE="-"
export EDITOR="nvim"
export VISUAL="nvim"
export FILES="thunar"
export PAGER="less -r"
export BAT_THEME="gruvbox-dark"

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE="$HOME/.cache/zsh/history"
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

export BROWSER="brave"
export MANPAGER="less"
export LESS="--RAW-CONTROL-CHARS"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export MPD_HOST="/tmp/mpd-socket"
export QT_QPA_PLATFORMTHEME="qt6ct"
export MBSYNCRC="$XDG_CONFIG_HOME/isync/mbsyncrc"

###--------- Colored Manpages ---------##

export LESS_TERMCAP_mb="$(printf '%b' '31m')"
export LESS_TERMCAP_md="$(printf '%b' '[36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '\e[1;3;40;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"

export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal
export MOZ_USE_XINPUT2=1                  # Mozilla smooth scrolling/touchpads.

# Start graphical server on user's current tty if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
