ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# aliases
alias redis="redis-server /usr/local/etc/redis.conf"
alias java7="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/Contents/Home"
alias java8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home"

# key bindings
bindkey '^[[1;9C' forward-word # alt + right arrow
bindkey '^[[1;9D' backward-word # alt + left arrow
bindkey '^[[1;5D' beginning-of-line # control left arrow
bindkey '^[[1;5C' end-of-line # control right arrow

# functions
rmlogs() {
    rm admin/logs/*
    rm api/logs/*
    rm care-management/logs/*
    rm domain/logs/*
    rm imports/logs/*
    rm voice/logs/*
}

gitprune() {
    git co master && git branch --merged | grep -v "development" | grep -v "master" | xargs -n 1 git branch -d;
    git co development && git branch --merged | grep -v "development" | grep -v "master" | xargs -n 1 git branch -d;
}

nginxmah() {
    cp /usr/local/etc/nginx/mah.nginx.conf /usr/local/etc/nginx/nginx.conf
    nginx -s reload
}

nginxcp() {
    cp /usr/local/etc/nginx/cp.nginx.conf /usr/local/etc/nginx/nginx.conf
    nginx -s reload
}

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

export JAVA_OPTS="-Xms1024m -Xmx2048m -XX:PermSize=1024m -XX:MaxPermSize=2048m"

export HOME=/Users/fkocina
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/Home
export IDEA_JDK=/Library/Java/Home
export IDEA_JDK_64=/Library/Java/Home
export ADK_HOME=/Library/adk
export GIT_HOME=/usr/local/git
export GROOVY_HOME=/Users/fkocina/.gvm/groovy/current
export GRAILS_HOME=/Users/fkocina/.gvm/grails/current
export SPRINGBOOT_HOME=/Users/fkocina/.gvm/springboot/current
export REDIS_HOME=/usr/local/Cellar/redis/2.8.12
export MYSQL_HOME=/usr/local/Cellar/mysql/5.6.19
export P7ZIP_HOME=/usr/local/Cellar/p7zip/9.20.1
export NODE_HOME=/usr/local/bin/node

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin
export PATH=$PATH:$HOME
export PATH=$PATH:$ADK_HOME/tools:$ADK_HOME/platform-tools
export PATH=$PATH:$JAVA_HOME
export PATH=$PATH:$GIT_HOME/bin
export PATH=$PATH:$GROOVY_HOME/bin
export PATH=$PATH:$GRAILS_HOME/bin
export PATH=$PATH:$REDIS_HOME/bin
export PATH=$PATH:$MYSQL_HOME/bin
export PATH=$PATH:$P7ZIP_HOME/bin

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/fkocina/.gvm/bin/gvm-init.sh" && -z $(which gvm-init.sh | grep '/gvm-init.sh') ]] && source "/Users/fkocina/.gvm/bin/gvm-init.sh"
