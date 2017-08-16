### Machine Dependent ###

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/usr/local/bin:$PATH

alias mypry='ruby ~/dev/Ruby/my_intercom_console/start_pry.rb'

# hammer path
export PATH=$HOME/bin:$PATH

# aliases for console
alias hamcon="hammer console production"
alias hamcert="hammer cert"
alias hambill="hammer console billing-production-console"

# This loads nvm
export NVM_DIR="/Users/joelthompson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# yarn fucking shit
export PATH="$HOME/.config/yarn/global/node_modules/.bin/:$PATH"

# sets my intercom user
export INTERCOM_USER=joel.thompson

# add pilot to my path
export PATH=$HOME/.pilot/shims:$HOME/.pilot/bin:$PATH
eval $(pilot env)

# ember and yarn
# leave this commented out for now, it seemed to cause some issues.
export PATH=$HOME/.yarn/bin:$PATH

# enable using the billing service
export BILLING_SERVICE_AVAILABLE=true

# postgres
export DATABASE_URL=postgres:///$(whoami)

### Machine Independent ###

# git aliases
alias g="git "
alias gs="git status"
alias gamend="git commit --amend && git push origin -f HEAD"

# bash aliases
alias la="ls -a"
alias ll="ls -la"
alias reload="source ~/.bash_profile"  #technically machine dependent

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# opens a pr and opens in a browser - doesn't seem to work for me, work on it later
# function pr () {
#   local repo=`git remote -v | grep -m 1 "(push)" | sed -e "s/.*github.com[:/]\(.*\)\.git.*/\1/"`
#   local branch=`git name-rev --name-only HEAD`
#   echo "... creating pull request for branch \"$branch\" in \"$repo\""
#   open https://github.com/$repo/pull/new/$branch
# }
