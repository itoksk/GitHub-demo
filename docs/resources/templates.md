# 学校業務自動化 GAS テンプレート集

## 📚 はじめに

Google Apps Script（GAS）を使った簡単な学校業務自動化のサンプル集です。
これらのサンプルは、GitHubでのコード管理を学ぶための教材として設計されています。

## 🎯 サンプル一覧

### 1. 簡単な出席確認フォーム

Google フォームと連携した出席確認システムの基本形です。

```javascript
// attendance.gs
function onFormSubmit(e) {
  // フォーム送信時の処理
  var timestamp = e.values[0];
  var name = e.values[1];
  var status = e.values[2]; // 出席/欠席
  
  // スプレッドシートに記録
  var sheet = SpreadsheetApp.getActiveSheet();
  sheet.appendRow([timestamp, name, status]);
  
  // 確認メッセージ
  console.log(name + "さんの出席を記録しました");
}
```

### 2. シンプルな成績集計

テストの点数を自動で集計する基本的なスクリプトです。

```javascript
// grades.gs
function calculateAverage() {
  var sheet = SpreadsheetApp.getActiveSheet();
  var dataRange = sheet.getRange(2, 2, sheet.getLastRow() - 1, 3); // B2から3列分
  var scores = dataRange.getValues();
  
  for (var i = 0; i < scores.length; i++) {
    var total = scores[i][0] + scores[i][1] + scores[i][2];
    var average = total / 3;
    
    // 平均点を記入
    sheet.getRange(i + 2, 5).setValue(average.toFixed(1));
  }
}
```

### 3. お知らせメール送信

保護者へのお知らせを一斉送信する簡単なスクリプトです。

```javascript
// notification.gs
function sendNotification() {
  var subject = "学校からのお知らせ";
  var body = "明日は授業参観です。よろしくお願いします。";
  
  // メールアドレスリストを取得
  var sheet = SpreadsheetApp.getActiveSheet();
  var emails = sheet.getRange("A2:A").getValues();
  
  for (var i = 0; i < emails.length; i++) {
    if (emails[i][0] !== "") {
      // メール送信（テスト時はコメントアウト推奨）
      // MailApp.sendEmail(emails[i][0], subject, body);
      console.log("送信先: " + emails[i][0]);
    }
  }
}
```

### 4. 簡単な時間割表示

今日の時間割を表示する基本的なスクリプトです。

```javascript
// timetable.gs
function getTodaySchedule() {
  var today = new Date();
  var dayOfWeek = today.getDay(); // 0:日曜, 1:月曜...
  
  var schedule = {
    1: ["国語", "算数", "理科", "社会", "体育"],
    2: ["算数", "国語", "音楽", "図工", "図工"],
    3: ["英語", "算数", "国語", "理科", "総合"],
    4: ["国語", "社会", "算数", "体育", "英語"],
    5: ["算数", "理科", "国語", "音楽", "学活"]
  };
  
  if (schedule[dayOfWeek]) {
    console.log("今日の時間割: " + schedule[dayOfWeek].join(", "));
    return schedule[dayOfWeek];
  } else {
    console.log("今日は授業がありません");
    return [];
  }
}
```

## 🚀 使い方

### 1. Google スプレッドシートで使う場合

1. Google スプレッドシートを新規作成
2. 「拡張機能」→「Apps Script」を選択
3. 上記のコードをコピー＆ペースト
4. 保存して実行

### 2. GitHubで管理する場合

1. リポジトリを作成
2. `.gs`ファイルとしてコードを保存
3. READMEを作成して使い方を記載
4. コミット＆プッシュ

```bash
git add attendance.gs
git commit -m "出席確認スクリプトを追加"
git push origin main
```

## 📝 カスタマイズのヒント

### 出席確認の拡張
- 遅刻・早退の記録を追加
- 月別の集計機能を追加
- グラフで可視化

### 成績集計の拡張
- 教科別の重み付け
- クラス平均の計算
- 成績分布のグラフ化

### メール送信の拡張
- テンプレート機能
- 送信履歴の記録
- 添付ファイル対応

## ⚠️ 注意事項

1. **個人情報の取り扱い**
   - 生徒の名前や成績は慎重に扱いましょう
   - GitHubにアップロードする際は、サンプルデータを使用

2. **メール送信の制限**
   - GASには1日あたりの送信制限があります
   - テスト時は実際の送信をコメントアウト

3. **実行権限**
   - 初回実行時は権限の承認が必要
   - 必要最小限の権限のみ許可

## 🔗 参考リンク

- [Google Apps Script 公式ドキュメント](https://developers.google.com/apps-script)
- [GAS サンプル集](https://developers.google.com/apps-script/samples)
- [clasp - GAS開発ツール](https://github.com/google/clasp)