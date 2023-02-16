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
	| tee cached-list.json \
	| jq -r '.[] | .full_name +" "+ .ssh_url' \
	| while read full_name url; do
		echo "$full_name"
		if [ ! -d "$full_name" ]; then
			git clone "$url" "$full_name"
		else
			echo -n "Updating.. "
			cd "$full_name" && { git fetch && echo -n "OK"; cd - >/dev/null; }
			echo
		fi
		echo
	done

