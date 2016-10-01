export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export MAVEN=/Development/maven/bin
export PATH=$PATH:$JAVA_HOME:$MAVEN

# Vim Colors
export CLICOLOR=1
export TERM=xterm-256color
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Show Files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide Files
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
