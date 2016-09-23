#!/usr/bin/env zsh

MD=pandoc
MD_OPTS=(-f markdown -t html --template=template.xhtml)

for page in *.md; do
	page="$(echo "$page" | sed "s|\\.md$||")"
	echo " :: $page.xhtml"
	#{
	#	cat header.xhtml

	#	[ -f "$page.js" ] && {
	#		echo "<script>"
	#		echo "// <![CDATA["

	#		cat "$page.js"

	#		echo "// ]]>"
	#		echo "</script>"
	#	}

	#	cat header.post.xhtml

	#	$MD "${MD_OPTS[@]}" $page.md
	#	cat footer.xhtml
	#} > $page.xhtml

	typeset -la local_opts
	local_opts=()

	if [[ "$page" != index ]]; then
		local_opts+=(-M menu -M content)
	fi

	#echo "${MD_OPTS[@]} ${local_opts[@]}"
	pandoc "${MD_OPTS[@]}" "${local_opts[@]}" $page.md -o $page.xhtml
done

