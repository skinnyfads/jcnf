#! /bin/bash

printf "%s: command not found\n\n" "$1"
printf "Since you have typed the wrong command, here are some Japanese words for you to memorize:\n\n"

japanize_data_file_path=~/jcnf/data.txt
japanize_limit=5

shuf "$japanize_data_file_path" | head -n "$japanize_limit"
