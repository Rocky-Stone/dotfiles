#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#custom aliases
alias ll='ls -alF'
alias c='clear'
alias ..='cd ..'
alias mkdir='mkdir -pv'
alias vi='nvim'
alias svi='sudo nvim'
alias upgrade='sudo pacman -Syyu'
alias rm='rm -I --preserve-root'
alias pac='sudo pacman'
alias search='pacman -Ss'
alias searchlocal='pacman -Qs'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias reboot='sudo reboot now'
alias shutdown='sudo shutdown now'
alias server='ssh rocky@192.168.1.193'
alias mcserver='mcrcon -p halo1123 -P 25575 -t -H 192.168.1.193'
alias mem='free -h'
alias eth='sudo ethtool enp14s0' 
alias nas='cd /mnt/nas/'
alias gitpush='git push -u origin main'
alias i3conf='vi ~/.config/i3/config'
alias cddot='cd ~/.dotfiles'
alias cdvi='cd ~/.config/nvim'

#custom functions
function gitall () {
	git add .
	git commit -m "$1"
	git push -u origin main
}

function mkcd () {
	mkdir ./"$1"
	cd ./"$1"
}

function pic () {
	nomacs ./"$1"
}

#add to PATH:
export PATH=$PATH:~/scripts
