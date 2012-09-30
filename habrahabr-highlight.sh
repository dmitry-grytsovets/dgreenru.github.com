#!/bin/bash
pygmentize $1 | aha | sed 's/<\(\/*\)span/<\1font/gi' | sed 's/style="color:\([#a-z0-9]*\)[^"]*"/color="\1"/gi' | sed 's/	/\&nbsp;\&nbsp;\&nbsp;\&nbsp;/g' | head -n -2 | tail -n +10 | sed 's/pre>/blockquote>/gi' 



