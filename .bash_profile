export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/rebeccahong/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

# Work Alias
alias sshs1='ssh rehong@sites1.stanford.edu'
alias sshs2='ssh rehong@sites2.stanford.edu'
alias ff="git ls-files | grep $1"
alias sshafs='ssh rehong@cardinal.stanford.edu'

# PS1='\[\033[1m\]\[\033[90m\][${debian_chroot:+($debian_chroot)}\[\033[02;93m\]$(__droppath "\w" 50)\[\033[35m\]$(parse_git_branch)\[\033[00;90m\]]\[\033[00m\] \n| 👏👏👏🍞 >> $ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
