#! /bin/bash

printf "%s: command not found\n\n" "$argv[1]"
printf "Since you have typed the wrong command, here are some Japanese words for you to memorize:\n\n"

set japanize_data_file_path ~/jcnf/data.txt
set japanize_limit 5

shuf "$japanize_data_file_path" | head -n "$japanize_limit"
