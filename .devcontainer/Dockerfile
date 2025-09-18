# 軽量な Alpine ベース
FROM node:20-alpine

# 必要パッケージのインストール
# git は zenn-cli init とかで必要になるので入れる
RUN apk add --no-cache git \
  && npm install -g pnpm zenn-cli

# 作業ディレクトリを作成
WORKDIR /workspace

# 権限を node ユーザーに変更
RUN chown -R node:node /workspace
USER node
