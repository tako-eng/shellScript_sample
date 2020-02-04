#!/bin/bash
# csvファイルの列を切り出すシェル

target_csv="sample.csv"

while read row; do
  column1=`echo ${row} | cut -d , -f 1`
  column2=`echo ${row} | cut -d , -f 2`

  #csvファイルの2列目を読む
  echo "${column1}の番号は${column2}です。"
done < ${target_csv}

<<comment
$ cat sample.csv
1,apple,100
2,banana,200
4,orange,800
8,grape,300
3,kiwi,450

結果
$ sh csv_column_cut.sh 
1の番号はappleです。
1の番号はappleです。
2の番号はbananaです。
4の番号はorangeです。
8の番号はgrapeです。
3の番号はkiwiです。
の番号はです。

comment
