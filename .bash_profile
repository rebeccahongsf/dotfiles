export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/rebeccahong/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

alias sshs1='ssh rehong@sites1.stanford.edu'
alias sshs2='ssh rehong@sites2.stanford.edu'
alias ff="git ls-files | grep $1"
alias start godecanter="npm run build && npm run styleguide && npm start"
