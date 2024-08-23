export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -):$HOME/.local/share/venv/bin/"
export ZDOTDIR="$HOME/.config/zsh"

export BROWSER="brave"
export MANPAGER="less"
export LESS="--RAW-CONTROL-CHARS"

# To clean up my home folder
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
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
export ANDROID_USER_HOME="$XDG_DATA_HOME/android"
export RENPY_PATH_TO_SAVES="$XDG_DATA_HOME/renpy"

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export TERMINAL="footclient"
fi
export VDPAU_DRIVER=va_gl
export LIBVA_DRIVER_NAME=iHD
export LESS="R"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export VDPAU_DRIVER=va_gl
export LIBVA_DRIVER_NAME=iHD

export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal
export MOZ_USE_XINPUT2=1                  # Mozilla smooth scrolling/touchpads.

gsettings set org.gnome.desktop.interface gtk-theme "Pop-dark"
gsettings set org.gnome.desktop.interface icon-theme "Pop"
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors'

# Start graphical server on user's current tty if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
#[ "$(tty)" = "/dev/tty1" ] &&  exec river
