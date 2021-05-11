if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi


alias seratoyoutube-dl='youtube-dl --audio-quality 0 --audio-format mp3 --recode mp4'

eval "$(ssh-agent -s)"
alias updatedb='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist'

alias ssh-vnc-ws='ssh -L 5901:localhost:5901 -N -f -l user ws'

alias cdtraktor='cd /Applications/Native Instruments/Traktor Pro 3/Traktor.app/Contents/Resources'

# move file rsync --ignore-existing -rP --no-perms --no-owner --no-group -v -e "ssh -i /Users/cdeshotel/.ssh/newkeyforws" user@ws:"/home/user/TorrentData/*ick*orty*S03E05*" ./
# move file on qnap MAY NEED TO EDIT DNS OR HOSTS FILE 
# rsync --ignore-existing -rP -v -e "ssh -i /root/.ssh/newkeyforws" user@ws:"/home/user/TorrentData/*ick*ort*" ./
##
# Your previous /Users/cdeshotel/.bash_profile file was backed up as /Users/cdeshotel/.bash_profile.macports-saved_2015-03-22_at_01:32:20
##

# MacPorts Installer addition on 2015-03-22_at_01:32:20: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/usr/local/opt/avr-gcc@7/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

export NVM_DIR="/Users/cdeshotel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
