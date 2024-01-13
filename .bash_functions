#! /opt/homebrew/bin/bash

return_error () {
	printf 'ERROR: %s\n' "$*"
	read -p "Press any key..."
	kill -INT $$
}

mknew () {
	if [ -z "$*" ]; then echo "need to supply a folder name"; return; fi
	mkdir -p -- "$*" && cd -- "$*"
}
alias mktmpdir=mknew

showfuncs () {
	# declare -f | grep --color '^[[:alpha:]_]*'
	declare -f | grep --color '^[^ {}]*'
}

mkwebsite () {
        cp ~/Dropbox/home/Templates/website/* .
        }
