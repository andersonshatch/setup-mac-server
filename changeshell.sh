# Change shell to homebrew bash
NEWSHELL='/usr/local/bin/bash'
if [ $SHELL != $NEWSHELL ] ; then
	echo "Changing shell to $NEWSHELL..."
	if ! grep $NEWSHELL /etc/shells > /dev/null 2>&1 ; then
		# $NEWSHELL not listed in /etc/shells, add it
		echo $NEWSHELL | sudo -p "Adding to /etc/shells. Password: " tee -a /etc/shells > /dev/null
	fi
	
	chsh -s $NEWSHELL
fi

