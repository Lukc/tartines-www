#!/usr/bin/env zsh

page="$1"
basename="$(echo "${page}" | sed 's|\.[^/]*$||g')"

echo '<ul id="lang">'
{
	[[ -e "${basename}.md" ]] && echo "${basename}.md"

	find "$(dirname $page)" | grep "${basename}\\..*\\.md"
} | while read file; do
	lang="$(basename "$file" .md | sed 's/^[^.]*//')"

	if [[ -z "$lang" ]]; then
		lang="en"
	else
		lang="${lang:1}"
	fi

	echo "<li><a href=\"$(templates/get-root.sh ${file})/${file%.md}.xhtml\">${lang}</a></li>"
done
echo '</ul>'

