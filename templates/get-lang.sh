#!/usr/bin/env zsh

page="$1"
lang="$(basename "$page" .md | sed 's/^[^.]*//')"

echo "$lang"

