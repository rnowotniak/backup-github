#!/bin/bash
#
# Robert Nowotniak 2023
#

#set -x

if [ -z "$token" ]; then
	echo "\$token environment variable is unset."
	exit 1
fi

#cat cached-list.json \
curl -s -H "Authorization: token ${token}" https://api.github.com/user/repos'?per_page=9999999' \
	| tee cached-list.json
	| jq -r '.[] | .full_name +" "+ .ssh_url' \
	| while read full_name url; do
		echo "$full_name"
	 	git clone "$url" "$full_name"
		if [ "$?" -eq 128 -a -d "$full_name" ]; then
			echo -n "Updating.. "
			cd "$full_name" && { git fetch && echo "OK"; cd -; }
			echo
		fi
	done

