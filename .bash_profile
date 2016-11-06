if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# mamp php alias on work computer
# alias phpmamp='/Applications/MAMP/bin/php/php7.0.0/bin/php'

# mypry on work computer
# alias mypry='ruby ~/Dev/Ruby/my_intercom_console/startPry.rb'

# mypry on personal computer
# alias mypry="ruby ~/Documents/Code/Ruby/mypry/mypry.rb"

alias g='git '
