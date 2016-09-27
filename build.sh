#!/usr/bin/env zsh

MD=pandoc
MD_OPTS=(-f markdown -t html --template=template.xhtml)

for page in **/*.md; do
	page="$(echo "$page" | sed "s|\\.md$||")"
	echo " :: $page.xhtml"

	dirname $page | read dirname
	if [[ "$dirname" != "." ]]; then
		echo $dirname | sed 's|[^/]*|..|g' | read dirname
	fi

	typeset -la local_opts
	local_opts=(--toc --toc-depth=4 -M "root=${dirname}/")

	[[ "$page" == index ]] && local_opts+=(-M index)

	local_opts+=(-M menu -M content)
	pandoc "${MD_OPTS[@]}" "${local_opts[@]}" $page.md -o $page.xhtml
done

