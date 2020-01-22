#!/binb/bash -
# ロギング用。ミリ秒と実行ライン数も出力する
# ↓出力サンプル
# [2020/01/22 17:58:51.577]L13 INFO foobarbaz
# [2020/01/22 17:58:51.580]L14 SUCCESS hamegg


# ログ出力先を指定する。デフォルトはシェルスクリプトと同階層
LOG_FILE="${0##*/}.log"

function logging() {
  # ログファイルなければ作って追記する
  echo -e "[$(date '+%Y/%m/%d %H:%M:%S.%3N')]L${BASH_LINENO[0]} $@" | tee -a ${LOG_FILE} > /dev/null 2>&1
}

#実行
logging "INFO foobarbaz"
logging "SUCCESS hamegg"

