---
id: license-details
title: 主要ライセンスの詳細解説
sidebar_label: ライセンスの詳細
description: 各オープンソースライセンスの特徴、条件、使用例を詳しく解説
---

# 主要ライセンスの詳細解説

## 📑 MIT License

### 概要
最もシンプルで制限の少ないライセンスの一つ。短く理解しやすいため、世界中で最も人気があります。

### 主な条件
✅ **許可されること：**
- 商用利用
- 修正
- 配布
- 私的利用

⚠️ **義務：**
- ライセンスと著作権表示を含める

❌ **責任：**
- 作者は一切の責任を負わない

### MITライセンスってどんな内容？

**かんたんに言うと：**
- 🆗 このソフトウェアは無料で自由に使えます
- 🔄 コピー、改造、販売もOK
- 📝 ただし、著作権表示は残してください
- ⚠️ 何か問題が起きても作者は責任を負いません

**実際のMITライセンスの例：**
```
MIT License

Copyright (c) 2024 山田太郎

以下の条件で、このソフトウェアを自由に使えます：
- 著作権表示を含めること
- このライセンス文を含めること

ソフトウェアは「現状のまま」で提供され、
何の保証もありません。
```

### 使用例
- **React** - Facebook製のUIライブラリ
- **jQuery** - JavaScriptライブラリ
- **Rails** - Ruby on Railsフレームワーク
- **Bootstrap** - CSSフレームワーク

### こんな場合に最適
- 🎓 学生の個人プロジェクト
- 🚀 スタートアップの初期プロダクト
- 📚 教育用サンプルコード
- 🛠️ 汎用的なツールやライブラリ

## 🔧 Apache License 2.0

### 概要
MITライセンスより詳細で、特許に関する条項を含む。大企業やエンタープライズ向けプロジェクトで人気。

### 主な条件
✅ **許可されること：**
- 商用利用
- 修正
- 配布
- 特許使用
- 私的利用

⚠️ **義務：**
- ライセンスと著作権表示
- 変更内容の明記
- NOTICEファイルの保持

❌ **責任：**
- 作者は責任を負わない
- 商標使用は許可されない

### 重要な条項

### Apache 2.0の特徴

**MITとの違い：**
- 🔒 特許（パテント）も保護される
- 📋 変更した場所を記録する必要がある
- 📄 NOTICEファイルがあればそれも残す

**かんたんに言うと：**
「MITよりしっかりしたライセンスで、企業向け」

### 使用例
- **Android** - Googleのモバイルプラットフォーム
- **Apache HTTP Server** - Webサーバー
- **Kotlin** - プログラミング言語
- **TensorFlow** - 機械学習フレームワーク

### NOTICEファイルの例
```
Apache Project
Copyright 2024 The Apache Software Foundation

This product includes software developed at
The Apache Software Foundation (http://www.apache.org/).

Portions of this software were developed at
National Center for Supercomputing Applications (NCSA) at the
University of Illinois at Urbana-Champaign.
```

## 🔒 GNU General Public License v3.0 (GPL v3)

### 概要
「コピーレフト」ライセンスの代表。派生物も同じライセンスで公開することを要求する。

### 主な条件
✅ **許可されること：**
- 商用利用
- 修正
- 配布
- 特許使用
- 私的利用

⚠️ **義務：**
- ソースコードの開示
- ライセンスと著作権表示
- 同一ライセンスの使用
- 変更内容の明記

❌ **責任：**
- 作者は責任を負わない

### GPLのしくみ（コピーレフト）

**かんたんに言うと：**
1. GPLのコードを使ったら
2. あなたのコードもGPLになる
3. 配布するならソースコードも公開必須

これを「感染性」と呼びます。

### GPLの例

**注意：**
GPLのライブラリを一つでも使うと、あなたのプロジェクト全体がGPLになります！

これが「GPLは難しい」と言われる理由です。

### 使用例
- **Linux Kernel** - オペレーティングシステムの核
- **WordPress** - CMSプラットフォーム
- **GIMP** - 画像編集ソフト
- **Git** - バージョン管理システム

## 🎨 Creative Commons（クリエイティブコモンズ）

### コード以外の作品用

文書、画像、動画、音楽などに使います。

### よく使われるCCライセンス

**CC0（完全自由）**
- 🆓 著作権を放棄
- 👍 何でもOK、名前を書く必要もなし

**CC BY（名前を書けばOK）**  
- 📝 作者の名前を書く
- 👍 それ以外は自由

**CC BY-NC（商用利用禁止）**
- 📝 作者の名前を書く
- 🚫 お金を稼ぐ目的では使えない

**CC BY-SA（同じライセンスで共有）**
- 📝 作者の名前を書く
- 🔄 改変したら同じライセンスで公開

**CC BY-NC-SA（非営利＋同じライセンス）**
- 📝 作者の名前を書く
- 🚫 お金を稼ぐ目的では使えない
- 🔄 改変したら同じライセンスで公開


### クレジットの書き方

```
この作品は山田太郎によるもので、CC BY 4.0ライセンスで公開されています。
```

## 📊 かんたん比較表

### 何ができる？

| ライセンス | 商用OK？ | 改造OK？ | 配布OK？ | 特許保護？ |
|----------|---------|---------|---------|---------|
| MIT | ✅ | ✅ | ✅ | ❌ |
| Apache 2.0 | ✅ | ✅ | ✅ | ✅ |
| GPL v3 | ✅ | ✅ | ✅ | ✅ |
| BSD 3-Clause | ✅ | ✅ | ✅ | ❌ |
| CC0 | ✅ | ✅ | ✅ | ❌ |

### 何をしなければいけない？

| ライセンス | 名前を書く | ライセンスを書く | コード公開 | 同じライセンス | 変更を記録 |
|----------|-----------|--------------|-----------|--------------|---------|
| MIT | ✅ | ✅ | ❌ | ❌ | ❌ |
| Apache 2.0 | ✅ | ✅ | ❌ | ❌ | ✅ |
| GPL v3 | ✅ | ✅ | ✅ | ✅ | ✅ |
| BSD 3-Clause | ✅ | ✅ | ❌ | ❌ | ❌ |
| CC0 | ❌ | ❌ | ❌ | ❌ | ❌ |

## 🎯 どれを選べばいい？

### プロジェクト別おすすめ

**📚 ライブラリ、フレームワーク**
- MITまたはApache 2.0

**📱 アプリケーション**
- みんなに公開したい → MIT
- オープンソースを守りたい → GPL v3

**🎓 教材、ドキュメント**
- CC BYまたはCC BY-SA

### 企業での使用を考慮

| 状況 | 推奨ライセンス | 理由 |
|-----|--------------|------|
| スタートアップ | MIT | シンプルで理解しやすい |
| 大企業 | Apache 2.0 | 特許保護がある |
| オープンソース企業 | GPL v3 | ビジネスモデルを保護 |
| SaaS企業 | AGPL v3 | ネットワーク使用も制御 |

## 🚨 注意事項

### ライセンスの互換性

```
MIT → Apache 2.0 ✅ 可能
MIT → GPL v3 ✅ 可能（GPLになる）
Apache 2.0 → GPL v3 ✅ 可能（条件付き）
GPL v3 → MIT ❌ 不可能
```

### デュアルライセンスの例

```markdown
# Dual Licensing

This software is available under two different licenses:

1. **GNU General Public License v3.0** - for open source projects
2. **Commercial License** - for proprietary use

Please contact sales@example.com for commercial licensing.
```

## 📚 その他の重要なライセンス

### BSD License (2-Clause & 3-Clause)
- MITに似ているが、より正式
- 3-Clauseは名前の使用を制限

### ISC License
- MITよりさらにシンプル
- OpenBSDプロジェクトで使用

### Mozilla Public License 2.0
- ファイル単位のコピーレフト
- 商用製品との組み合わせが容易

### Unlicense
- パブリックドメインへの献呈
- CC0の代替

## 🎓 かんたんまとめ

### 🎆 初心者の鉄則

**コードの場合：**
1. **迷ったらMIT** - 一番かんたん
2. **企業で使うならApache 2.0** - 特許も守れる
3. **GPLは慎重に** - 「感染」するので注意

**画像や文書の場合：**
- **CC BY** - 名前を書けばOK
- **CC0** - 完全自由

とにかく、**ライセンスなしより、何かつける方がいい**！

## 📖 次のステップ

- [教育現場向けガイド](./education-guide) - 学校での活用方法