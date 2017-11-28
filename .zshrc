#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.config/zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.config/zprezto/init.zsh"
fi

# Customize to your needs...
source ~/.config/zprezto/setopt.zsh

conf() {
	case $1 in
		xmonad)		nano ~/.xmonad/xmonad.hs ;;
		bspwm)		nano ~/.config/bspwm/bspwmrc ;;
		sxhkd)		nano ~/.config/sxhkd/sxhkdrc ;;
		conky)		nano ~/.xmonad/.conky_dzen ;;
		homepage)	olddir=$(pwd) && cd ~/scripts/homepage.py && nano homepage.py && ./homepage.py; cd $olddir ;;
		menu)		nano ~/scripts/menu ;;
		mpd)		nano ~/.mpdconf ;;
		mutt)		nano ~/.mutt/acct/wei001 ;;
		ncmpcpp)	nano ~/.ncmpcpp/config ;;
		pacman)		nano /etc/pacman.conf ;;
		ranger)		nano ~/.config/ranger/rc.conf ;;
		rifle)		nano ~/.config/ranger/rifle.conf ;;
		tmux)		nano ~/.tmux.conf ;;
		vim)		nano ~/.vimrc ;;
		xinit)		nano ~/.xinitrc ;;
		xresources)	nano ~/.Xresources && xrdb ~/.Xresources ;;
		zathura)	nano ~/.config/zathura/zathurarc ;;
		theme2)		nano ~/.themes/FlatStudioCustom/gtk-2.0/gtkrc ;;
		theme3)		nano ~/.themes/FlatStudioCustom/gtk-3.0/gtk.css ;;
		gtk2)		nano ~/.gtkrc-2.0 ;;
		gtk3)		nano ~/.config/gtk-3.0/settings.ini ;;
		tint2)		nano ~/.config/tint2/xmonad.tint2rc ;;
		zsh)		nano ~/.zshrc && source ~/.zshrc ;;
		hosts)		sudoedit /etc/hosts ;;
		vhosts)		sudoedit /etc/httpd/conf/extra/httpd-vhosts.conf ;;
		httpd)		sudoedit /etc/httpd/conf/httpd.conf ;;
		*)			echo "Unknown application: $1" ;;
	esac
}


# Git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias configadd='config add .'
alias configcommit='config commit -m '
alias configpush='config push origin master'

# Programs
alias installfont='sudo fc-cache -f -v'
alias alsamixer="alsamixer -g"
alias equalizer="alsamixer -D equal"

#alias mkdir and cd
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cdl () { cd "$@" && ls; }

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

export EDITOR="nano"
export XDG_CONFIG_HOME="/home/ace/.config"

#pathdirs=(
#    ~/scripts
#)
#for dir in $pathdirs; do
#    if [ -d $dir ]; then
#        path+=$dir
#    fi
#done