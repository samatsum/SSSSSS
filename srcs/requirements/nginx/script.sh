#!/bin/bash

echo "127.0.0.1 ${DOMAIN_NAME}" >> /etc/hosts

# 1. defaultファイル内の ${DOMAIN_NAME} を .env の値で置換する
#    -i オプションのために一時ファイルを使わないよう sed の書式を調整
sed -i "s/\${DOMAIN_NAME}/${DOMAIN_NAME}/g" /etc/nginx/sites-available/default

# 2. 編集した設定ファイルを sites-enabled にリンクしてNGINXに読み込ませる
ln -s -f /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# 3. NGINXをフォアグラウンドで起動する
nginx -g "daemon off;"
