#!/usr/bin/env zsh

MD=pandoc
MD_OPTS=(-f markdown -t html)

for page in *.md; do
	page="$(echo "$page" | sed "s|\\.md$||")"
	echo " :: $page.xhtml"
	{
		cat header.xhtml

		[ -f "$page.js" ] && {
			echo "<script>"
			echo "// <![CDATA["

			cat "$page.js"

			echo "// ]]>"
			echo "</script>"
		}

		cat header.post.xhtml

		$MD "${MD_OPTS[@]}" $page.md
		cat footer.xhtml
	} > $page.xhtml
done

