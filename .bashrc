#export JAVA_HOME=/opt/jdk1.8.0_45
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

#export JRE_HOME=/opt/jdk1.8.0_45/jre
export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre

# Separate directories by colon. To see path, use "echo $PATH" in terminal.
export PATH=/opt/idea/bin:/home/alex/vert.x-3.0.0/bin:$PATH

export WB_FORCE_SYSTEM_COLORS=1


alias bash='. ~/.bashrc' # reloads .bashrc
alias ..='cd ..'
alias ...='cd ../../../'
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
alias cts='cd /home/alex/git/signingday-coach-server'
alias ctc='cd /home/alex/git/signingday-coach-app'
alias lax='cd /home/alex/git/signingday-v2-football-pro'

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
alias gh="git for-each-ref --format='%(committerdate:short)  %(refname:short)  (%(authorname))' --sort=-committerdate"
alias gl="git log --pretty=format:'[%h] %aN, %ar: %s %n' --stat"

# Branches
alias gcm='git checkout master'
alias gcd='git checkout dev'

alias restart='sudo /etc/init.d/apache2 restart'
alias reload='sudo service apache2 reload'


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

zsh
