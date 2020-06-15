# ps -ax | grep $1 | grep -v grep | awk '{print $1}' | xargs '{kill -9 $1}'

ps ax | grep $1 | grep -v grep | cut -f1 -d ' ' | xargs kill