#!/bin/sh

# Use $XINITRC variable if file exists.
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"

# sudo not required for some system commands
for command in mount umount sv pacman updatedb su shutdown poweroff reboot ; do
	alias $command="sudo $command"
done; unset command

# Basic commands
alias cp="cp -iv"
alias copy="xclip -selection clipboard"
alias mv="mv -iv"
alias rm="rm -vI"
alias mkd="mkdir -pv"
alias ls="exa --color=auto --group-directories-first -1 -l"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"
alias cat="bat"
alias e="exit"

# Python
alias p="python3"
alias pi="ipython3"

# Maven
alias mvn='mvn --global-settings "./m2/wrapper/dists/apache-maven-3.8.3-bin/5a6n1u8or3307vo2u2jgmkhm0t/apache-maven-3.8.3/conf/settings.xml"'

# Git
alias gitlog="git log --all --graph --oneline --decorate"
alias gitdiff="git diff --compact-summary"
alias gitone="git log --oneline"
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias agit="nvim -c 'Agit'"

function groot () {
	if [[ "$1" != "--no-pushd" ]] || [[ "$1" != "-n" ]]; then
		pushd .
	fi
	cd `git root 2> /dev/null`
}

# Cargo
alias cb="cargo build"
alias cr="cargo run"
alias cdoc="cargo doc --open --no-deps --document-private-items"

# Debugging
alias gdb1="export PURE_PYTHON=1; gdbgui"
alias core_here="echo 'core' > /proc/sys/kernel/core_pattern"
alias vg="valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all "

# Variety wallapapers
alias waln="variety -n > /dev/null"
alias walp="variety -p > /dev/null"

alias atch="sudo ~/toolkit/mndrives.sh attach"
alias undr="sudo ~/toolkit/mndrives.sh undrive"

alias zap="zathura --mode presentation"
