#!/bin/sh

if head -n10 "$1" | grep -q "^numbersections: true$"; then
	echo "-N"
fi

