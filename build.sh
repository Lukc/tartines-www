#!/bin/sh

MD=./md2html.awk

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

		$MD $page.md
		cat footer.xhtml
	} > $page.xhtml
done

