setopt autocd
setopt histignoredups
setopt histignorespace
setopt noclobber

autoload -U compinit; compinit

hash -d uagents=~/Library/LaunchAgents
hash -d udaemons=~/Library/LaunchDaemons
hash -d sagents=/Library/LaunchAgents
hash -d sdaemons=/Library/LaunchDaemons
hash -d repos=~/repos
hash -d letc=/usr/local/etc

source ~/.aliases
source ~/.functions
source ~/.exports
