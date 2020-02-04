#!bin/bash

echo "start"

# 存在しないファイルに対してコマンド実行(エラーになる)
ls hogefugapiyo
echo $?

# 結果
# ls: cannot access hogefugapiyo: No such file or directory
# 2

echo "end"
