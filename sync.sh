#!/bin/bash
# kotetsu_lp/public の内容をこのリポジトリへ写す
set -eu
cd "$(dirname "$0")"
SRC=../kotetsu_lp/public
cp "$SRC/index.html" "$SRC/phone.html" .
# 配信元が違うので、フォント参照だけ相対パスに直す
sed -i "" "s#url('/fonts/#url('fonts/#" index.html
cp "$SRC/fonts/SatsukiGendaiMincho.woff2" fonts/
echo "写しました。git add -A && git commit && git push で公開されます。"
