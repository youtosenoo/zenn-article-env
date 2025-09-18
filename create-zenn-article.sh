#!/bin/sh

# slugが指定されているか確認
if [ -z "$1" ]; then
  echo "Error: Please provide a title as the first argument."
  echo "Usage: $0 \"Your Article Title\""
  exit 1
fi

# npx dotenv を使って .env ファイルから環境変数をロードできるようにしてる
npx dotenv -- sh -c '
  # タイトルのスペースをハイフンに変換
  SLUG_TITLE=$(echo "$1" | tr " " "-")
  npx zenn new:article --slug "${SLUG_TITLE}"
' -- "$1"