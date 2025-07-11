# Git/GitHub 用語集

## 📚 基本用語（初心者向け）

### 🔤 アルファベット順

#### **Branch（ブランチ）**
- **意味**: 開発の枝分かれ。メインの流れから分岐して独立した作業ができる
- **例え**: 本の下書きを複数バージョン作るようなもの
- **使用例**: 新機能を開発する時に`feature/new-function`というブランチを作る

#### **Clone（クローン）**
- **意味**: リモートリポジトリをローカルにコピーすること
- **例え**: 図書館の本を借りて家に持ち帰るようなもの
- **コマンド**: `git clone https://github.com/user/repo.git`

#### **Commit（コミット）**
- **意味**: 変更を記録として保存すること
- **例え**: セーブポイントを作るようなもの
- **重要**: 一度に一つの意味のある変更をコミットする

#### **Conflict（コンフリクト）**
- **意味**: 同じファイルの同じ部分が異なる変更をされた時に起こる衝突
- **例え**: 二人が同じノートの同じ行を違う内容で書き換えようとした状態
- **解決**: 手動でどちらの変更を採用するか決める

#### **Fork（フォーク）**
- **意味**: 他人のリポジトリを自分のアカウントにコピーすること
- **例え**: レシピを参考に自分流にアレンジするためにコピーを作る
- **用途**: オープンソースプロジェクトへの貢献

#### **Git**
- **意味**: 分散型バージョン管理システム
- **例え**: 文書の変更履歴を全て記録する賢いシステム
- **特徴**: オフラインでも作業可能

#### **GitHub**
- **意味**: Gitリポジトリのホスティングサービス
- **例え**: コードの保管庫兼共同作業スペース
- **機能**: Issues、Pull Request、Actions など

#### **Issue（イシュー）**
- **意味**: バグ報告や機能要望を管理する仕組み
- **例え**: プロジェクトのタスクリストや問題点リスト
- **使い方**: `#1`のように番号で参照できる

#### **Merge（マージ）**
- **意味**: 異なるブランチの変更を統合すること
- **例え**: 別々に書いた原稿を一つにまとめる作業
- **種類**: Fast-forward、3-way merge など

#### **Pull（プル）**
- **意味**: リモートの変更をローカルに取り込むこと
- **例え**: 最新版の資料をダウンロードして更新する
- **コマンド**: `git pull origin main`

#### **Pull Request（プルリクエスト）**
- **意味**: 変更を本体に取り込んでもらうための依頼
- **例え**: 「この変更を確認して取り入れてください」という提案
- **略称**: PR

#### **Push（プッシュ）**
- **意味**: ローカルの変更をリモートに送信すること
- **例え**: 完成した宿題を提出箱に入れる
- **コマンド**: `git push origin main`

#### **README（リードミー）**
- **意味**: プロジェクトの説明書
- **例え**: 製品の取扱説明書
- **形式**: 通常はMarkdown形式（README.md）

#### **Repository（リポジトリ）**
- **意味**: プロジェクトの保管場所
- **例え**: プロジェクト専用のフォルダ
- **略称**: repo（レポ）

#### **Stage（ステージ）**
- **意味**: コミットする前の準備エリア
- **例え**: 郵送する前に荷物を箱に入れる作業
- **コマンド**: `git add ファイル名`

## 🎯 よく使う組み合わせ

### **git clone → git add → git commit → git push**
1. リポジトリをコピー
2. 変更をステージング
3. 変更を記録
4. リモートに送信

### **git branch → git checkout → 作業 → git merge**
1. ブランチ作成
2. ブランチ切り替え
3. 開発作業
4. メインブランチに統合

## 🔍 GitHub特有の用語

#### **Actions（アクションズ）**
- **意味**: 自動化ワークフロー
- **例**: コードをプッシュしたら自動でテストを実行

#### **Gist（ジスト）**
- **意味**: コードスニペットの共有サービス
- **例**: ちょっとしたコードをメモ代わりに保存

#### **GitHub Pages**
- **意味**: 静的ウェブサイトホスティング
- **例**: 無料でウェブサイトを公開できるサービス

#### **Star（スター）**
- **意味**: お気に入り登録
- **例**: ブックマークのようなもの

#### **Watch（ウォッチ）**
- **意味**: リポジトリの更新通知を受け取る
- **例**: 更新があったらメールで知らせてもらう

## 💡 初心者が混乱しやすいポイント

### Git と GitHub の違い
- **Git**: バージョン管理システム（ツール）
- **GitHub**: Gitを使ったサービス（ウェブサイト）

### origin と main の意味
- **origin**: リモートリポジトリの別名
- **main**: デフォルトのブランチ名（以前はmaster）

### ローカル と リモート
- **ローカル**: 自分のパソコン上
- **リモート**: インターネット上（GitHub上）

## 📊 図解

### リポジトリの構造
```
リポジトリ
├── .git/（Git管理フォルダ）
├── README.md（説明書）
├── LICENSE（ライセンス）
└── src/（ソースコード）
    ├── index.html
    └── style.css
```

### ブランチのイメージ
```
main ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
      ╲                          ╱
       ╲ feature/new-design     ╱
        ━━━━━━━━━━━━━━━━━━━━━━━
```

## 🔗 関連リンク
- [Git公式ドキュメント（日本語）](https://git-scm.com/book/ja/v2)
- [GitHub Docs（日本語）](https://docs.github.com/ja)
- [サルでもわかるGit入門](https://backlog.com/ja/git-tutorial/)