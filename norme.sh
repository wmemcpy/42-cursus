#!/bin/sh

files=$(find . -name "*.c" -o -name "*.h")

for file in $files
do
	echo -n "$file: "
	norminette $file | tail -n 1 | awk '{if ($NF == "OK!") {print "\033[32m"$NF"\033[0m"} else {print "\033[31m"$NF"\033[0m"; print $0}}'
done
