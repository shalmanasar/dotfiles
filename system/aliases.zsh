# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Adding grc aliases
alias colourify="grc -es --colour=auto"
alias configure='colourify ./configure'
alias diff='grc -es --colour=auto diff'
alias make='grc -es --colour=auto make'
alias gcc='grc -es --colour=auto gcc'
alias g++='grc -es --colour=auto g++'
alias as='grc -es --colour=auto as'
alias gas='grc -es --colour=auto gas'
alias ld='grc -es --colour=auto ld'
alias netstat='grc -es --colour=auto netstat'
alias ping='grc -es --colour=auto ping'
alias traceroute='grc -es --colour=auto traceroute'
alias cat="grc -es --colour=auto cat"
alias head="grc -es --colour=auto head"
alias tail="grc -es --colour=auto tail"
#original grc line below
#source "`brew --prefix grc`/etc/grc.bashrc"


# ls aliases
####alias ls="ls -F --color"
alias l="ls -lh --color"
alias ll="ls -lAh --color"
alias la="ls -A --color"
alias lsa='ls -alF --color'

# easy navigating
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias /="cd /"

alias plz="sudo"

# history alias
alias hall='history 1 -1'
alias h='history -30 -1'
alias hg='history 1 -1 | grep '

# process list helpers
alias pg='ps -Aef | head -1 && ps -Aef | grep'
alias pg='ps -A | grep '
alias psa='ps -A'
alias ka='killall'
alias k='kill -9'
alias knode='pkill -9 -f '\''node --expose-gc'\'
alias fk='fkill'

# copies current directory to clipboard
alias curdir="pwd | tr -d '\n' | pbcopy"

# starts up a webserver at the current directory
alias httpserver="python -m SimpleHTTPServer 9090"

# open current directory in sourcetree
alias st='open -a "/Applications/SourceTree.app" `pwd`'
alias stf='open -a "/Applications/SourceTree.app" `pwd` && fg'
alias sf='open -a "/Applications/Fork.app" `pwd`'
alias sff='open -a "/Applications/Fork.app" `pwd` && fg'

#Edit
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias edit='sublime'

# task list saved in git
alias t='edit ~/.dotfiles/docs/tasks.md'
alias tu='git --git-dir=/Users/scarpenter/.dotfiles/.git/ --work-tree=/Users/scarpenter/.dotfiles commit -a -m "ToDo update"'

#Shorter Git commands
alias gist='git status'
alias assume='git update-index --assume-unchanged'
alias unassume='git update-index --no-assume-unchanged'

#replace Git with Hub
alias git='hub'

alias mci='mvn clean install -DskipTests -Pblc-development'
alias mcit='mvn clean install -Pblc-development'
alias mi='mvn install -DskipTests -Pblc-development'

# shortcuts for npm run
alias nr="npm run"
alias nrt="npm run -s test"
alias nrl="npm run -s lint"
alias nrs="npm run -s start"
alias yr="yarn run"
alias ys="yarn run start"
alias yl="yarn run lint"
alias yt="yarn run test"
alias ytw="yarn test:watch"

#blc docs
alias localdocs='gollum-site serve --watch --working --port 8050'

#ease tomcat starting, stopping, logging
alias starttomcat='sh /usr/local/apache-tomcat-7.0.63/bin/startup.sh'
alias stoptomcat='sh /usr/local/apache-tomcat-7.0.63/bin/shutdown.sh'
alias logtomcat='tail -f /usr/local/apache-tomcat-7.0.63/logs/catalina.out'

alias apachelog='tail -f /usr/local/var/log/httpd/error_log'
alias startapache='sudo apachectl start'
alias stopapache='sudo apachectl stop'
alias restartapache='sudo apachectl -k restart'

alias redis-start=redis-server /usr/local/etc/redis.conf


alias startdnsmasq='sudo launchctl start homebrew.mxcl.dnsmasq <<< broadleaf'
alias stopdnsmasq='sudo launchctl stop homebrew.mxcl.dnsmasq'

###########  alias startsite='cd ~/commerce/site; mvn eclipse:eclipse; mvn clean install -U; ant tomcat-jrebel'
# Try this wihout mvn eclipse:eclipse command:
alias startsite='unset GEM_PATH; cd ~/commerce/site; mvn eclipse:eclipse; mvn clean install -U; ant tomcat-jrebel'
alias startadmin='unset GEM_PATH; cd ~/commerce/admin; mvn eclipse:eclipse; mvn clean install -U; ant tomcat-jrebel'
####### alias site='unset GEM_PATH; cd ~/commerce/site; ant tomcat-jrebel'
####### alias admin='unset GEM_PATH; cd ~/commerce/admin; ant tomcat-jrebel'
## alias site='unset GEM_PATH; cd ~/commerce/site; ant tomcat-jrebel'
## alias admin='unset GEM_PATH; cd ~/commerce/admin; ant tomcat-jrebel'

alias gemsite='cd ~/commerce/site; ant tomcat-jrebel'
alias gemadmin='cd ~/commerce/admin; ant tomcat-jrebel'

admin () {
	if ! pgrep -f solr
	then
		solr up
	fi
	unset GEM_PATH
	cd ~/commerce/admin
	ant tomcat-jrebel
}

site () {
	if ! pgrep -f solr
	then
		solr up
	fi
	unset GEM_PATH
	cd ~/commerce/site
	ant tomcat-jrebel
}

alias fixmvn='unset GEM_PATH; cd ~/commerce; mvn clean install -U'

alias yardview='unset GEM_PATH; cd ~/Documents/projects/yardview; ant tomcat-jrebel'

#alias startmysql='mysql.server start'
#alias stopmysql='mysql.server stop'

alias startmysql='brew services start mysql@5.7'
alias stopmysql='brew services stop mysql@5.7'

alias mysqlbroadleaf='mysqladmin -v -f -uroot -pbroadleaf drop broadleaf; mysqladmin -v -uroot -pbroadleaf create broadleaf'

alias loadclean='cd ~/commerce/dev-loader; ./clean-db.sh broadleaf'; cd -

alias startdrive='drive init ~/Google\ Drive\ for\ Work;cd ~/Google\ Drive\ for\ Work'
alias stopdrive='drive deinit [--no-prompt]'

alias cdcommerce='cd /Users/scarpenter/commerce/site/src/main/webapp/WEB-INF'

alias cdcheat='cd /usr/local/Cellar/cheat/2.2.3/libexec/lib/python2.7/site-packages/cheat/cheatsheets'

alias sublhist='cd ~; subl .zsh_history'

alias blue='sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport; sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport'

#alias flushdns='sudo killall -HUP mDNSResponder'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS'

alias showusb='ls /dev/tty.usbmodem*'
alias connectduo='screen /dev/tty.usbmodemXXXXX'

alias simpledock='defaults write com.apple.dock static-only -bool TRUE; killall Dock'
alias fulldock='defaults write com.apple.dock static-only -bool FALSE; killall Dock'
adddockspace () {
	defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
}
alias showdockhidden='defaults write com.apple.dock showhidden -bool TRUE; killall Dock'
alias reset-dock='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

alias addmetowheel='sudo dscl . -append /Groups/wheel GroupMembership $(whoami)' #to add yourself to wheel

chrome () {
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $* 2>&1 &
}

#https://kkob.us/2016/01/09/homebrew-and-postgresql-9-5/
#http://apple.stackexchange.com/questions/194280/how-to-restart-postgresql-installed-by-brew-in-osx
alias postgresql.server='function pgsql_server() { case $1 in "start") echo "Trying to start PostgreSQL..."; pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start ;; "stop") echo "Trying to stop PostgreSQL..."; pg_ctl -D /usr/local/var/postgres stop -s -m fast ;; esac }; pgsql_server'

#replaced# alias startsolr='cd ~/solr-4.10.4/example;nohup java -Dsolr.solr.home=icon -jar start.jar &; exit'
#replaced# alias stopsolr='pkill -f solr'
alias startsolr='cd ~/commerce/solr/cloud;vagrant up;cd -'
alias stopsolr='cd ~/commerce/solr/cloud/;vagrant halt;cd -'

solr () {
	case $1 in
		up)
			echo 'starting vagrant'
			cd ~/commerce/solr/cloud/
			vagrant up
			cd -
			;;
		update)
			echo 'vagrant box update'
			cd ~/commerce/solr/cloud/
			vagrant box update
			cd -
			;;
		halt)
			echo 'stopping vagrant'
			cd ~/commerce/solr/cloud/
			vagrant halt
			cd -
			;;
		status)
			echo 'solr status'
			pgrep -f solr
			;;
		*)
			echo $"Usage: $0 {up|halt|update|status}"
	esac
}

# alias bru='brew update; brew cask update; brew upgrade; brew cleanup; brew cask cleanup; echo 'updating tldr:'; tldr --update'
bru () {
	echo 'brew update'
	brew update
	echo 'brew upgrade'
	brew upgrade
	echo 'brew cask upgrade'
	brew cask upgrade
	echo 'brew cleanup'
	brew cleanup
	echo 'brew doctor'
	brew doctor
	brew cask doctor
	echo 'update tldr'
	tldr --update
}
bruha () {
	echo 'update pip3'
	pip3 install --upgrade pip setuptools wheel
	echo 'upgrade npm'
	npm install npm@latest -g
	echo 'update ruby gems'
	sudo gem update
	echo 'npm outdated --global'
	npm outdated --global
}

alias usejava6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias usejava7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias usejava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

#dev aliases
alias refresh='source ~/.zshrc'
alias ref='source ~/.zshrc'

alias redis='redis-server /usr/local/etc/redis.conf'
alias hu='edit /private/etc/hosts'
alias whatismyip='curl http://dev70.iconfitness.com/CWSTest/ipAddress.jsp'

alias sleepnow='pmset sleepnow'
alias aliases=';edit ~/.dotfiles/system/aliases.zsh'
alias zfiles=';edit ~/.dotfiles/system/aliases.zsh ~/.dotfiles/system/env.zsh ~/.zshrc'

alias pi='ssh raspberrypi.local -l pi'


#update for your .dotfiles
alias upt='git --git-dir=/Users/scarpenter/.dotfiles/.git --work-tree=/Users/scarpenter/.dotfiles commit -a -m "Update task list"'

# copy file content
alias copy='pbcopy'
alias paste='pbpaste'

# Move files and folders to the trash
alias rm='trash'

# t () {
# 	if [ ! -z $1 ]
# 		then 
# 			tree -L $1
# 		else 
# 			tree -L 1
# 	fi
# }

alias process='ps -ef | grep'

alias clearcache='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed'
alias dnsclear='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed'

alias start-server='Python -m SimpleHTTPServer '


# copies public ssh key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias pubgithubkey="more ~/.ssh/github_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias shalmanasar='ssh bitnami@node.shalmanasar.com'

# To copy my ssh key to the server:
# cat /Users/scarpenter/.ssh/id_rsa.pub | ssh scarpenter@iconapps01 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"


### ??? ### alias whoownsme='git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n'

greenscreen() {
	cd "/Users/scarpenter/Documents/tn5250j/build"
	nohup java -jar tn5250j.jar &
	cd -
}

as400() {
	cd "/Users/scarpenter/Documents/tn5250j/build"
	nohup java -jar tn5250j.jar &
	cd -
}

alias sha256='shasum -a256'

alias pstreee='pstree -g 2'

xcode () {
	case $1 in
		unsign)
			echo 'unsign xcode'
			update_xcode_plugins --unsign
			;;
		restore)
			echo 'restore xcode'
			update_xcode_plugins --restore
			;;
		launch)
			echo 'install launch agent'
			update_xcode_plugins --install-launch-agent
			;;
		unlaunch)
			echo 'uninstall launch agent'
			update_xcode_plugins --uninstall-launch-agent
			;;
		*)
			echo $"Usage: $0 {unsign|restore|launch|unlaunch}"
	esac
}

throttle () {
	case $1 in
		off)
			echo 'throttle off'
			sudo sysctl debug.lowpri_throttle_enabled=0
			;;
		on)
			echo 'throttle on'
			sudo sysctl debug.lowpri_throttle_enabled=1
			;;
		*)
			echo $"Usage: $0 {on|off}"
	esac
}

alias updatedbeaver='brew cask reinstall dbeaver-community'

status () {
	echo 'The plural of status is statūs'
	echo 'mysql'
	pgrep -f mysql
	echo 'tomcat'
	pgrep -f tomcat
	echo 'java'
	pgrep -f java
	solr status
#	echo 'dnsmasq'
#	dig testing.testing.one.two.three.localhost @127.0.0.1
	echo 'brew services list'
	brew services list
}

alias jn='jupyter notebook &'
#http://localhost:8888/?token=2f746a26e338031c88405a019277b19b277f1979f03842a1

showcolors () {
	for code ({000..255}) { print -nP -- "$code: %F{$code}%K{$code}Test%k%f " ; (( code % 8 && code < 255 )) || printf '\n'}
}

echoc () {
	echo $fg[$1]$2
}

# update Mac CLI 
alias upmac 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/update)"'
# manually update Mac CLI at /usr/local/bin/mac

backblaze () {
	echo 'open bzexcluderules_editable.xml'
	cd /Library/Backblaze.bzpkg/bzdata/
	subl bzexcluderules_editable.xml
	cd -
}

helps () {
	echo 'Possible sources:'
	echo 'man <command>'
	echo 'cheat <command>'
	echo 'tldr <command>'
	echo 'eg <command>'
	echo 'bro <command>'
}

clearspecialattributes () {
	sudo chflags nouchg %1
}

alias dsstore='sudo find . -name ".DS_Store" -depth -exec rm {} \;'

slacktheme () {
	echo 'open ssb-interop.js'
	cd /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/
	edit ssb-interop.js
	cd -
}

alias startslack='export SLACK_DEVELOPER_MENU=true; open -a /Applications/Slack.app'

killspin () {
	echo 'Disable spindump and tailspind'
	sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.spindump.plist
	sudo mv /System/Library/LaunchDaemons/com.apple.spindump.plist /System/Library/LaunchDaemons/com.apple.spindump.plist.bak
	sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.tailspind.plist
	sudo mv /System/Library/LaunchDaemons/com.apple.tailspind.plist /System/Library/LaunchDaemons/com.apple.tailspind.plist.bak
}

startspin () {
	echo 'Reenable spindump and tailspind'
	sudo mv /System/Library/LaunchDaemons/com.apple.spindump.plist.bak /System/Library/LaunchDaemons/com.apple.spindump.plist
	sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.spindump.plist
	sudo mv /System/Library/LaunchDaemons/com.apple.tailspind.plist.bak /System/Library/LaunchDaemons/com.apple.tailspind.plist
	sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.tailspind.plist
}

# nginx shtuff
alias nginxconf='edit /usr/local/etc/nginx/nginx.conf'
alias cdnginx='cd /usr/local/Cellar/nginx/1.13.9/html; lsa'
alias services='brew services list'
alias startnginx='brew services start nginx'
alias stopnginx='brew services stop nginx'

alias startleveldb='cd ~/Documents/projects-personal/levelui-master; npm start'

alias cleaneclipse='open /Applications/Eclipse.app --args -clean'

alias stopdsstore='defaults write com.apple.desktopservices DSDontWriteNetworkStores true'

what () {
	echo 'curl cheat.sh/<command>'
	curl cheat.sh/$1
}

alias jshell='/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home/bin/jshell'

alias fixxcode='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias nod='ssh -i "~/.ssh/nodeshalmanasarcom.pem" bitnami@node.shalmanasar.com'

# mkdir, cd into it
mkcd () {
	mkdir -p "$*"
	cd "$*"
}

alias cdreact='cd ~/Documents/projects-personal/react'

alias installsass='npm install node-sass;npm rebuild node-sass'

alias insecure='sudo spctl --master-disable'


