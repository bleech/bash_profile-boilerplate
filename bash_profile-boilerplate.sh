# user@host:path (blue)
PROMPT_PATH="\[\033[0;34m\][\u@\h:\w]"

# [git branch] (red)
PROMPT_GITBRANCH="\[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '[\1] ')\"\`"

# prompt sign (white)
PROMPT_SIGN="\[\033[37m\]$\[\033[00m\] "

# compose prompt
PS1="\n${PROMPT_PATH}\n${PROMPT_GITBRANCH}${PROMPT_SIGN}"

# remove annoying mail messages
unset MAILCHECK
unset MAIL

# remove apple double files
export COPYFILE_DISABLE=true

# make it colorful
export CLICOLOR=1

# give privileges to user bin paths
export PATH="~/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"

# directory access shortcuts
alias desk='cd ~/Desktop/'
alias down='cd ~/Downloads/'
alias drive='cd ~/bleech/'
alias www='cd /Applications/MAMP/htdocs/'

# directory command shortcuts
alias lsa='ls -a'
alias dir='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# always ensure strongest image optimization settings
alias optipng='optipng -o7'
alias jpegoptim='jpegoptim --strip-all -t'

# load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# load bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi
