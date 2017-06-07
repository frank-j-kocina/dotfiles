ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

##### aliases

# always open emacs in the terminal
alias emacs="emacs -nw"

# prune local git branches from the current repo
alias gitpl="git branch --merged master | grep -v '^ *master$' | xargs git branch -d"

# key bindings
bindkey "^[[1;9C" forward-word
bindkey "^[[1;9D" backward-word
bindkey "^[[1;5D" beginning-of-line
bindkey "^[[1;5C" end-of-line

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git grails)

source $ZSH/oh-my-zsh.sh

export AWS_DEFAULT_REGION="us-east-1"

export JAVA_OPTS="-Xms512m -Xmx2048m -XX:PermSize=512m -XX:MaxPermSize=2048m"

export HOME="/Users/${USER}"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export PATH="${PATH}:${HOME}"
export PATH="${PATH}:${JAVA_HOME}"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
