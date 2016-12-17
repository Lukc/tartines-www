#!/usr/bin/env zsh

page="${1}"

dir="$(dirname "$page")"

if [[ "$dir" == "." ]]; then
	echo .
else
	echo "$dir" | sed 's|^./||;s/[^/]*/../g'
fi

