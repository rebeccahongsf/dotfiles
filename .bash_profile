# Work Alias
alias sshs1='ssh rehong@sites1.stanford.edu'
alias sshs2='ssh rehong@sites2.stanford.edu'
alias ff="git ls-files | grep $1"
alias sshafs='ssh rehong@cardinal.stanford.edu'


# Update Homebrew itself, upgrade all packages, remove dead symlinks, remove old versions
# of installed formulas, clean old downloads from cache, remove versions of formulas, which
# are downloaded, but not installed, check system for potential problems
alias brewup='brew update; brew upgrade; brew cask upgrade; brew cleanup; brew doctor'

# This loads nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rebeccahong/programming/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rebeccahong/programming/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rebeccahong/programming/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rebeccahong/programming/google-cloud-sdk/completion.bash.inc'; fi

# Android Development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Easier navigation
alias ..="cd .."
alias ....="cd ../.."

# Shortcuts
alias p="cd ~/programming"
alias d="cd ~/Desktop"

# Configure ls command
export CLICOLOR=1 # Enable ANSI colors sequences to distinguish file types
export LSCOLORS=GxFxCxDxBxegedabagaced # Value of this variable describes what color to use for which file type

# Color definitions (used in prompt)
RED='\[\033[1;31m\]'
GREEN='\[\033[1;32m\]'
YELLOW='\[\033[1;33m\]'
PURPLE='\[\033[1;35m\]'
GRAY='\[\033[1;30m\]'
DEFAULT='\[\033[0m\]'

# Function which prints current Git branch name (used in prompt)
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Configure prompt
PS1="${RED}\u" # Username
PS1+=" ${GRAY}• " # Separator
PS1+="${GREEN}\h" # Hostname
PS1+=" ${GRAY}• " # Separator
PS1+="${YELLOW}\w" # Working directory
PS1+=" ${GRAY}\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"•\") " # Separator (if there is a Git repository)
PS1+="${PURPLE}\$(parse_git_branch)" # Git branch
PS1+="\n" # New line
PS1+="${GRAY}\$ " # Dollar sign
PS1+="${DEFAULT}" # Get back default color

export PS1;

# PS1='\[\033[1m\]\[\033[90m\][${debian_chroot:+($debian_chroot)}\[\033[02;93m\]$(__droppath "\w" 50)\[\033[35m\]$(parse_git_branch)\[\033[00;90m\]]\[\033[00m\] \n| 👏👏👏🍞 >> $ '
