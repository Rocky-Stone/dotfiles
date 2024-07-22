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
alias ..='cd ..'
alias ~='cd ~'
alias mkdir='mkdir -pv'
alias rm='rm -I --preserve-root'

alias vi='nvim'
alias svi='sudo nvim'

alias pac='sudo pacman'
alias upgrade='sudo pacman -Syyu'
alias search='pacman -Ss'
alias searchlocal='pacman -Qs'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias clean='~/scripts/package-cleanup.sh'

alias reboot='sudo reboot now'
alias shutdown='sudo shutdown now'

alias server='ssh rocky@192.168.1.193'
alias mcserver='mcrcon -p halo1123 -P 25575 -t -H 192.168.1.193'

alias mem='free -h'
alias eth='sudo ethtool enp14s0' 

#alias nas='cd /mnt/nas/'
alias gitpush='git push -u origin main'

alias i3conf='vi ~/.config/i3/config'
alias bashrc='vi ~/.bashrc'

alias cddot='cd ~/.dotfiles'
alias cdvi='cd ~/.config/nvim'
alias dl='cd ~/Downloads'
alias 3d='cd ~/Documents/3d/'
alias dactyl='cd /home/rocky/Software/qmk_firmware/keyboards/handwired/dactyl_manuform/5x6/keymaps/Rocky-Stone'

#custom functions
function nas () {
	smbclient -N \\\\192.168.1.72\\"$1" -A ~/.smbcredentials
}

function edconf () {
	vi ~/.config/"$1"
}
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

function /code () {
	if [ $# != 0 ]
	then
		cd ~/Documents/coding/"$1"
	else
		cd ~/Documents/coding/
	fi
}

function service () {
	if [ $# == 0 ] 
	then
		echo "Error: need name of service"
	else
		fileName="$1"
		fileName+=".service"
		sudo nvim /etc/systemd/system/"$fileName"
	fi
}

function timer () {
	if [ $# == 0 ] 
	then
		echo "Error: need name of timer"
	else
		fileName="$1"
		fileName+=".timer"
		sudo nvim /etc/systemd/system/"$fileName"
	fi
}




#add to PATH:

export PATH=$PATH:~/scripts

