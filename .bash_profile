source ~/.profile
source ~/.rvm/scripts/rvm

# Setting PATH for android sdk tools
PATH=$PATH:/Users/aarongrider/Development/adt-bundle-mac-x86_64-20140321/sdk/tools
PATH=$PATH:/Users/aarongrider/Development/adt-bundle-mac-x86_64-20140321/sdk/platform-tools
export PATH

ANDROID_HOME=/Users/aarongrider/Development/adt-bundle-mac-x86_64-20140321/sdk
export ANDROID_HOME

# Setting alias
alias edit="open -a /Applications/Sublime.app/"
alias andir="cd ~/Development/repo/tca-android/"
alias iosdir="cd ~/Development/repo/tca-ios/"
alias adbdir="cd ~/Development/repo/subsplash-qa/adb+/"
alias appdir="cd ~/Development/repo/appium/"

# git alias
alias gl="git log --oneline -n 10"
alias glg="git log --graph --decorate --oneline"
alias gco="git checkout"
alias gp="git pull"
alias gps="git push"
alias gh="git rev-parse HEAD"
alias gs="git status"
alias gb="git branch"
alias gr="git reset --hard"
alias gcl="git clean -f -d"
alias ga="git add"
alias gci="git commit -m"
alias gt="git tag"
alias grv="git rev-parse HEAD"
alias gm="git merge"

# Setting bash prompt
function parse_git_branch() {
  git_branch_long=$(git branch 2>/dev/null | grep \*)
  git_branch=${git_branch_long/\* /}
  git_status=$(git status 2>/dev/null | tail -n1)
  if [ -n "$git_status" ]; then
    if [ "$git_status" != "nothing to commit, working directory clean" ]; then
		  echo "[$git_branch*]"
	  else
		  echo "[$git_branch]"
	  fi
  fi
}

export PS1='[\e[0;93m\w\e[m]\n\u\e[0;92m$(parse_git_branch)\e[m\n$ '
 
# Setting bash color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Setting PATH for Python 3.4
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
