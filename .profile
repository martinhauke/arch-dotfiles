export EDITOR="nvim"
export BROWSER="firefox"
export PATH=$HOME/.scripts:$PATH

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
