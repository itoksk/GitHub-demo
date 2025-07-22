---
id: adding-license
title: ライセンスの追加方法
sidebar_label: ライセンスの追加
description: GitHubリポジトリにライセンスを追加する様々な方法を詳しく解説
---

# ライセンスの追加方法

## 📋 目次

1. [新規リポジトリ作成時に追加](#新規リポジトリ作成時)
2. [既存リポジトリに追加（GitHub UI）](#既存リポジトリにgithub-uiで追加)
3. [コマンドラインで追加](#コマンドラインで追加)
4. [複数ファイルへの適用](#複数ファイルへの適用)
5. [特殊なケース](#特殊なケース)

## 🆕 新規リポジトリ作成時

### Step 1: リポジトリ作成画面へ

1. GitHubにログイン
2. 右上の「+」→「New repository」をクリック

![新規リポジトリ作成](https://docs.github.com/assets/images/help/repository/repo-create.png)

### Step 2: ライセンスを選択

```mermaid
graph LR
    A[Repository name入力] --> B[Description入力]
    B --> C[Public/Private選択]
    C --> D[Initialize this repository with:]
    D --> E[Add a README file ✓]
    D --> F[Add .gitignore]
    D --> G[Choose a license ✓]
    G --> H[ライセンス選択]
```

### Step 3: ドロップダウンから選択

**人気のライセンス：**
- MIT License
- Apache License 2.0
- GNU GPLv3
- BSD 2-Clause
- BSD 3-Clause

### 実際の画面操作

```
1. "Choose a license" をクリック
2. ドロップダウンメニューから選択
3. "Create repository" をクリック
```

:::tip プロのヒント
リポジトリ作成時にライセンスを追加すると、最初のコミットに含まれるため、履歴がきれいに保たれます。
:::

## 🔧 既存リポジトリにGitHub UIで追加

### 方法1: ライセンス追加ウィザード

1. **リポジトリのメインページ**へアクセス
2. **"Add file"** → **"Create new file"** をクリック
3. ファイル名に **`LICENSE`** と入力
4. **"Choose a license template"** ボタンが表示される

```
my-repository/
├── README.md
├── src/
└── LICENSE  ← これを追加
```

### 方法2: GitHub のライセンステンプレート

1. ファイル名に `LICENSE` と入力すると表示される
2. 右側の **"Choose a license template"** をクリック
3. ライセンスを選択
4. **年と名前**を確認
5. **"Review and submit"** → **"Commit new file"**

### 画面の流れ

```mermaid
sequenceDiagram
    participant U as ユーザー
    participant G as GitHub UI
    participant R as リポジトリ
    
    U->>G: "Create new file"クリック
    G->>U: ファイル名入力画面
    U->>G: "LICENSE"と入力
    G->>U: "Choose a license template"表示
    U->>G: テンプレート選択
    G->>U: プレビュー表示
    U->>G: "Commit new file"
    G->>R: LICENSEファイル追加
```

## 💻 コマンドラインで追加

### 基本的な方法

```bash
# 1. リポジトリをクローン
git clone https://github.com/username/repository.git
cd repository

# 2. LICENSEファイルを作成
touch LICENSE

# 3. ライセンステキストを追加（例：MIT）
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2024 [あなたの名前]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

# 4. コミットしてプッシュ
git add LICENSE
git commit -m "Add MIT license"
git push origin main
```

### wget を使った方法

```bash
# MIT License
wget https://raw.githubusercontent.com/github/choosealicense.com/gh-pages/_licenses/mit.txt -O LICENSE

# Apache 2.0
wget https://raw.githubusercontent.com/github/choosealicense.com/gh-pages/_licenses/apache-2.0.txt -O LICENSE

# GPL v3
wget https://raw.githubusercontent.com/github/choosealicense.com/gh-pages/_licenses/gpl-3.0.txt -O LICENSE
```

### 年と名前の置換

```bash
# 現在の年を自動で入力
YEAR=$(date +%Y)
NAME="Taro Yamada"

# sedで置換（Mac/Linux）
sed -i "s/\[year\]/$YEAR/g" LICENSE
sed -i "s/\[fullname\]/$NAME/g" LICENSE

# Windowsの場合（PowerShell）
(Get-Content LICENSE) -replace '\[year\]', '2024' -replace '\[fullname\]', 'Taro Yamada' | Set-Content LICENSE
```

## 📁 複数ファイルへの適用

### ソースコードへのライセンスヘッダー追加

#### JavaScript/TypeScript の例

```javascript
/**
 * Copyright (c) 2024 [あなたの名前]
 * 
 * This software is released under the MIT License.
 * https://opensource.org/licenses/MIT
 */

// あなたのコード
```

#### Python の例

```python
# -*- coding: utf-8 -*-
"""
Copyright (c) 2024 [あなたの名前]

This software is released under the MIT License.
https://opensource.org/licenses/MIT
"""

# あなたのコード
```

#### 一括追加スクリプト

```bash
#!/bin/bash
# add-headers.sh

LICENSE_HEADER="/**
 * Copyright (c) $(date +%Y) Your Name
 * Licensed under the MIT License
 */

"

# すべての.jsファイルにヘッダーを追加
for file in $(find . -name "*.js" -not -path "./node_modules/*"); do
    if ! grep -q "Copyright" "$file"; then
        echo "$LICENSE_HEADER" | cat - "$file" > temp && mv temp "$file"
    fi
done
```

## 🎯 特殊なケース

### 1. デュアルライセンス

```markdown
# Dual License

This project is available under two different licenses:

1. **Commercial License** - for commercial use
2. **MIT License** - for open source projects

Please see LICENSE-COMMERCIAL and LICENSE-MIT for details.
```

### 2. 異なるディレクトリで異なるライセンス

```
project/
├── LICENSE          # プロジェクト全体のライセンス
├── src/
│   └── LICENSE      # ソースコード用
├── docs/
│   └── LICENSE.md   # ドキュメント用（CC BY-SA等）
└── assets/
    └── LICENSE      # 画像等用（CC0等）
```

### 3. サードパーティライセンスの管理

```markdown
# Third Party Licenses

This project uses the following open source packages:

## Package Name
- **License**: MIT
- **Copyright**: (c) 2023 Author Name
- **Repository**: https://github.com/author/package

## Another Package
- **License**: Apache 2.0
- **Copyright**: (c) 2023 Another Author
- **Repository**: https://github.com/author/another-package
```

## 📝 README.md への記載

### 基本的な記載方法

```markdown
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

### バッジを使った表示

```markdown
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
```

**その他のバッジ例：**
- Apache 2.0: `[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)`
- GPL v3: `[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)`
- CC0: `[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)`

## ✅ チェックリスト

ライセンス追加後の確認事項：

- [ ] `LICENSE` ファイルが正しく作成されている
- [ ] 年と著作権者名が正しい
- [ ] README.md にライセンス情報を記載
- [ ] 必要に応じてソースファイルにヘッダーを追加
- [ ] `.gitignore` に LICENSE を含めていない
- [ ] コミット＆プッシュ完了
- [ ] GitHubのリポジトリページでライセンスが表示されている

## 🔍 よくある質問

### Q: LICENSE と LICENSE.md どちらがいい？
**A:** `LICENSE`（拡張子なし）が一般的です。GitHubも自動認識します。

### Q: 複数の著作権者がいる場合は？
**A:** 
```
Copyright (c) 2024 Taro Yamada
Copyright (c) 2024 Hanako Suzuki
```

### Q: 年の更新は必要？
**A:** 新しい変更を加えた年を追加します：
```
Copyright (c) 2023-2024 Your Name
```

### Q: ライセンスを変更したい場合は？
**A:** 新しいバージョンから適用。既存のコードは元のライセンスのまま。

## 🎓 まとめ

1. **新規プロジェクト** → 作成時に追加が最も簡単
2. **既存プロジェクト** → GitHub UIが便利
3. **自動化したい** → コマンドラインやスクリプト
4. **確認を忘れずに** → 正しく表示されているか確認

## 📚 次のステップ

- [主要ライセンスの詳細](./license-details) - 各ライセンスの詳しい解説
- [教育現場向けガイド](./education-guide) - 授業での活用方法