#! /bin/sh

printf "%s: command not found\n\n" "$1"
printf "Since you have typed the wrong command, here are some Japanese words for you to memorize:\n\n"

default_ifs="$IFS"
data_file_path=~/dev/jcnf/data.txt
total_words=$(wc -l < "$data_file_path")
limit=5
selected_index=()

while [ ${#selected_index[@]} -lt $limit ]; do 
  random_index=$(shuf -i 1-"$total_words" -n 1)

  if ! echo "${selected_index[@]}" | grep -q "\<$random_index\>"; then
    selected_index+=("$random_index")
  fi
done

for index in "${selected_index[@]}"; do 
  word=$(sed -n "${index}p" "$data_file_path")

  IFS=";"

  read -r kana definition romaji <<< "$word"
  echo "$kana [ $romaji ] - $definition"
done

IFS="$default_ifs"
