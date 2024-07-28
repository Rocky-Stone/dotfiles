# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

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

#alias upgrade='sudo pacman -Syyu'
alias search='dnf search'
alias install='sudo dnf install'
alias remove='sudo dnf remove'
alias clean='sudo dnf clean db'

alias reboot='sudo reboot now'
alias shutdown='sudo shutdown now'

alias server='ssh rocky@192.168.1.193'
alias mcserver='mcrcon -p halo1123 -P 25575 -t -H 192.168.1.193'

alias mem='free -h'
alias eth='sudo ethtool enp14s0' 

#alias nas='cd /mnt/nas/'
alias gitpush='git push -u origin main'

alias bashrc='vi ~/.bashrc'

alias cddot='cd ~/.dotfiles'
alias cdvi='cd ~/.config/nvim'
alias dl='cd ~/Downloads'
alias 3d='cd ~/Documents/3d/'
#alias dactyl='cd /home/rocky/Software/qmk_firmware/keyboards/handwired/dactyl_manuform/5x6/keymaps/Rocky-Stone'

#custom functions

function cdconf () {
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

function code () {
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

