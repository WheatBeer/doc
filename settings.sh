### Linux & MacOS Setting script ###

print_help() {
    echo -e "Usage: $0 [linux/mac] [up/down]"
    exit 0
}

# Print usage help.
if [[ "$#" -lt 1 || $1 = '-h' || $1 = '--help' ]];  then
    print_help
fi

##### Default arguments #####
# linux or mac
os=$1; shift
if [[ $os != 'linux' && $os != 'mac' ]]; then
    echo -e "Error: unknown OS $os"
    print_help
fi

if [[ $os = 'linux' ]]; then
	$set=$1; shift
	# upload
	if [[ $set = 'up' ]]; then
		cat ~/.vimrc > ./linux_mac_settings/vim/my_vimrc.txt;
		cat ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py > ./linux_mac_settings/vim/linux_ycm_extra_conf.py; 
		git add .;
		git commit -m 'upload settings';
		git push origin master
	# download
	elif [[ $set = 'down' ]]; then
		git pull origin master
		eval cat ./linux_mac_settings/vim/my_vimrc.txt > ~/.vimrc
	else
		print_help
	fi
elif [[ $os = 'mac' ]]; then
	ud=$1; shift
	# upload
	if [[ $ud = 'up' ]]; then
		cat ~/.vimrc > ./linux_mac_settings/vim/my_vimrc.txt;
		cat ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py > ./linux_mac_settings/vim/mac_ycm_extra_conf.py; 
		git add .;
		git commit -m 'upload settings';
		git push origin master
	# download
	elif [[ $ud = 'down' ]]; then
		git pull origin master
		eval cat ./linux_mac_settings/vim/my_vimrc.txt > ~/.vimrc
	else
		print_help
	fi
fi
