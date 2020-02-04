#!/bin/bash 

#このプロセス自身を実行したコマンドを取得する 
COMMAND=`sed -e 's/\x0/ /g' /proc/$$/cmdline`

echo ${COMMAND}

