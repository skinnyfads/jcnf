#! /bin/bash

printf "%s: command not found\n\n" "$1"
printf "Since you have typed the wrong command, here are some Japanese words for you to memorize:\n\n"

default_ifs="$IFS"
data_file_path=~/jcnf/data.txt
total_words=$(wc -l < "$data_file_path")
limit=5

declare -A selected_index
mapfile -t words < "$data_file_path"
IFS=";"

while [ ${#selected_index[@]} -lt $limit ]; do 
  random_index=$(shuf -i 1-"$total_words" -n 1)

  if [ -z "${selected_index[$random_index]}" ]; then
    selected_index[$random_index]=1
    word=${words[$random_index-1]}

    read -r kana definition romaji <<< "$word"
    echo "$kana [ $romaji ] - $definition"
  fi
done

IFS="$default_ifs"
