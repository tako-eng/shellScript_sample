#!/bin/bash -
# 機能説明
# 引数で渡された数字を2進数に変換します。
#
# @param
# 2進数に変換したい10進数の数
#
echo "obase=2; $1" | bc
