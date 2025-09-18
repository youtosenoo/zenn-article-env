# Zenn記事作成リポジトリ

このリポジトリは、Zennへの記事投稿を目的とした**共有執筆環境**です。

## 🚀 クイックスタート

### 前提条件

  * **VS Code**
  * **Docker**
  * VS Code拡張機能 **Dev Containers**

### 環境の起動

1.  このリポジトリをクローンします。
2.  VS Codeでリポジトリのフォルダを開くと、開発コンテナ表示を推奨する通知が表示されます。
3.  通知をクリックすると、必要な環境が自動で構築・起動されます。
4.  .env.example記載の内容に沿って「.env」を作成してください。

### 記事のプレビュー

記事を執筆しながら**リアルタイムでプレビュー**を確認できます。
Devコンテナ起動後、`http://localhost:8000` にアクセスすると、プレビュー画面が表示されます。

記事の書き方なども`http://localhost:8000`記載の内容をご参考ください。

### 各コマンド

```bash
# 新しい記事作成（url文字列は記事概要がわかるような文字。英数字ハイフンアンダーバーのみ）
pnpm run new:article url文字列

```
-----

## 📁 プロジェクト構造

記事や設定ファイルは以下の構成で管理されます。

```
.
├── .devcontainer/                # Dev Containersの設定ファイル
│   ├── devcontainer.json
│   └── Dockerfile
├── articles/                     # Zennの記事ファイル（Markdown）を格納
│   └── 20230101123456_my-article.md
├── images/                       # 記事内で使用する画像
├── package.json                  # コマンドなど
└── README.md                     
```

-----

## 🌍 環境

  * **開発環境**: Dev Containers (Docker)
  * **Node.js**: v18 (LTS)
  * **Zenn CLI**: 最新版