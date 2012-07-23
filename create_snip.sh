#!/bin/zsh

# This script will grab a snipmate snippet folder and 
# concatenate all the files in it into a single file in neocomplcache format
# each snippet will be named after the filename it came from
#
# also not this script needs zsh to complete


SNIPS_DIR="/Users/dave/.vim/bundle/snipmate-snippets/snippets"

for i in `ls $SNIPS_DIR/$1`;do 
  snip=(${(s/./)i})
  echo "snippet    $snip[1]" >> $1.snip
  echo "abbr       $snip[1]" >> $1.snip
  cat $SNIPS_DIR/$1/$i >> $1.snip
  echo "" >> $1.snip
done

