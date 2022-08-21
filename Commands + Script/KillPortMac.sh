PROMPT_COMMAND='echo -en "\033]0;New terminal title\a"'

pid=$(lsof -i:8888 -t); kill -TERM $pid || kill -KILL $pid

echo $pid killed