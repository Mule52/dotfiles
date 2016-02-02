# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

export EDITOR="vim"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="robbyrussell"
#ZSH_THEME="ys"
#ZSH_THEME="gianu"
#ZSH_THEME="agnoster"
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

export PATH="/opt/idea/bin:/home/alex/vert.x-3.0.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/home/alex:/home/alex/mysql-connector-java-5.1.38-bin.jar"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh



# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"





#export JAVA_HOME=/opt/jdk1.8.0_45
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

#export JRE_HOME=/opt/jdk1.8.0_45/jre
export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre

# Separate directories by colon. To see path, use "echo $PATH" in terminal.
export PATH=/opt/idea/bin:/home/alex/vert.x-3.0.0/bin:$PATH

alias tmux="TERM=screen-256color-bce tmux"
alias bash='. ~/.bashrc' # reloads .bashrc
alias zsh='. ~/.zshrc' # reloads .zshrc
alias grep='grep --color=auto'
alias ls="ls -F --color=auto"
alias lsa="la -la"
alias v="vim"
#alias ls="ls -F --color"

alias ...='cd ../../../'
alias ..='cd ..'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'

alias sshprod='ssh alex@50.116.31.236'
alias sshtest='ssh alex@50.116.20.188'

alias size='du -sh'

#alias ide='gksudo "/opt/idea/bin/idea.sh" %f'
alias ide='"/opt/idea/bin/idea.sh" %f'
#alias gide='gksudo "/home/alex/smartgit/bin/smartgit.sh"'
alias giteye='gksudo "/opt/giteye/GitEye" &'
alias gide='gksudo "/opt/giteye/GitEye" &'
alias home='cd /home'
alias me='cd /home/alex'
alias projects='cd /home/alex/projects'
alias dev='cd /home/alex/git'
alias cts='cd /home/alex/git/coach-tools-server'
alias cta='cd /home/alex/git/coach-tools-app'
alias sd='cd /home/alex/git/signingday-website'
alias lax='cd /home/alex/git/signingday-lacrosse-website'

diffTool() {
    git difftool $1
}
alias gd=diffTool

mergeTool() {
    git mergetool $1
}
alias gm=mergeTool

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gba='git branch -a '
alias gc='git commit '
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias clean='git clean -df'
alias pull='git pull'
alias push='git push'

# Custom Git
alias gh='git for-each-ref --format="%(committerdate:short)  %(refname:short)  (%(authorname))" --sort=-committerdate'
alias gl='git log --pretty=format:"[%h] %aN, %ar: %s %n" --stat'

# Branches
alias gcd='git checkout dev'
alias gcm='git checkout master'
alias gcs='git checkout staging'
alias gct='git checkout test'
alias gmd='git merge dev'
alias gmt='git merge test'
alias gms='git merge staging'
alias gmm='git merge master'

alias restart='sudo /etc/init.d/apache2 restart'
alias reload='sudo service apache2 reload'

alias ctagrepjs='grep -rni --include="*.js" --exclude-dir={www,node_modules,hooks,platforms,plugins,resources} $1'
alias ctagrephtml='grep -rni --include="*.html" --exclude-dir={node_modules,hooks,platforms,plugins,resources} $1'
alias ctsgrepjs='grep -rni --include="*.js" --exclude-dir={node_modules,php} $1'
alias dswp='find ./ -type f -name "\.*sw[klmnop]" -delete'

#alias sd='git checkout css-update'
#alias lms='git checkout css-update-lms'
#alias is='git checkout ImportSystem'

# NEED TO RUN BASH AS ADMINISTRATOR
# alias subl='"/c/Program Files/Sublime Text 3/sublime_text.exe" &'
# alias subweb='"/c/Program Files/Sublime Text 3/sublime_text.exe" &'
# alias stree='"/C/Program Files (x86)/Atlassian/SourceTree/SourceTree.exe" &'

#alias bld='"/C/Program Files (x86)/MSBuild/12.0/Bin/MSBuild.exe" "SalesExec.Azure.sln" "/clp:ErrorsOnly"'
#alias bld='"/C/Program Files (x86)/MSBuild/12.0/Bin/MSBuild.exe" "SalesExec.Azure.sln" "/nologo" "/t:build" "/clp:verbosity=q" "/clp:ErrorsOnly" "/p:Configuration=Debug"'
#alias test='"/C/Program Files (x86)/Microsoft Visual Studio 12.0/Common7/IDE/MSTest.exe" "/testcontainer:ClickPoint.Salesexec.Tests/bin/Debug/ClickPoint.SalesExec.Tests.dll"'


