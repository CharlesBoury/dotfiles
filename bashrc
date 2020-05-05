
# test if console is in interactive mode.
# if it's not, 'tput' generate error message
if [[ $- == *i* ]]
then
	# Couleurs
	noir=$(tput setaf 0)
	rouge=$(tput setaf 1)
	vert=$(tput setaf 2)
	jaune=$(tput setaf 3)
	bleu=$(tput setaf 4)
	magenta=$(tput setaf 5)
	cyan=$(tput setaf 6)
	blanc=$(tput setaf 7)
	noir2=$(tput setaf 8)
	rouge2=$(tput setaf 9)
	vert2=$(tput setaf 10)
	jaune2=$(tput setaf 11)
	bleu2=$(tput setaf 12)
	magenta2=$(tput setaf 13)
	cyan2=$(tput setaf 14)
	blanc2=$(tput setaf 15)
	normal=$(tput sgr0)
fi

# Command prompt
export PS1="\n\[$rouge\]\w\n▶\[$normal\] "

# Add my scripts (custom & installed by me) to PATH
PATH=$PATH:~/Scripts/bin

export VISUAL='subl -w'
export EDITOR="$VISUAL"

# Raccourcis
alias l='tree -L 1 -UC' #ajouter -a pour fichiers cachés
alias up='cd ..'

alias edit='open -t'
alias reveal='open -R'

alias diffdirs='diff --brief --recursive --exclude "._*" --exclude ".DS_Store" --exclude ".git"'

alias montrerFichiersCachés='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias cacherFichiersCachés='defaults write com.apple.finder AppleShowAllFiles FALSE'


# Bouts de code sympa

	# Cacher types de fichiers
		# find $PWD -type f -name '*o'  -exec chflags hidden '{}' ';'
		# find $PWD -type f -name '*hi' -exec chflags hidden '{}' ';'

	# trim everything between underscores
	# _0001s_0006_name.png -> name.png
		# for f in *.png; do mv -- "$f" "${f/_*_}"; done
