#!/bin/zsh

autoload -U colors
colors

OUTPUT_DIR=.
typeset -la FILES

function info {
	echo "${fg_bold[green]}-- ${fg_no_bold[white]}$@${reset_color}"
}

function usage {
	echo "usage: $1 [options] <file> [<file> [<file> …] …]"
	echo
	echo "options:"
	echo "  -o <dir>, --output <dir>         Export files to <dir>."
	echo "  -h, --help                       Prints this message."
}

while (( $# > 0 )); do
	case "$1" in
		-h|--help)
			usage "$0"
			exit 0
		;;
		-o|--output|--output-dir)
			[[ -n "$2" ]] || {
				usage "$0"

				exit 1
			}

			OUTPUT_DIR="$2"

			shift 1
		;;
		-*)
			echo "unknown parameter: $1" >&2

			exit 2
		;;
		*)
			FILES+=("$1")
		;;
	esac

	shift 1
done

if (( ${#FILES[@]} == 0 )); then
	usage
	exit 1
fi

for FILE in "${FILES[@]}"; do
	FILE="${FILE%.md}"
	FILE="${FILE#./}"

	info "Generating $OUTPUT_DIR/${FILE}.xhtml"
	pandoc ${FILE}.md \
		-o $OUTPUT_DIR/${FILE}.xhtml \
		-t html5 \
		--template templates/template.tmpl \
		$(templates/number.sh "./$FILE.md") \
		-M root:"$(templates/get-root.sh "${FILE}.md")" \
		-M menu \
		-M content \
		--highlight-style=pygments \
		--section-divs \
		--toc
done

