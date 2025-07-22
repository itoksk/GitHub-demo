#!/bin/bash

# JPEGファイルが存在するか確認
if [ ! -f "logo.jpeg" ]; then
    echo "logo.jpeg が見つかりません。"
    echo "以下のコマンドを実行してファイルをコピーしてください："
    echo "cp /Users/keisuke/Downloads/Gemini_Generated_Image_4r7z1w4r7z1w4r7z.jpeg /Users/keisuke/git/GitHub-demo/static/img/logo.jpeg"
    exit 1
fi

echo "ファビコンを生成中..."

# ImageMagickがインストールされているか確認
if ! command -v convert &> /dev/null; then
    echo "ImageMagickがインストールされていません。"
    echo "Homebrewでインストールしてください："
    echo "brew install imagemagick"
    exit 1
fi

# 各種サイズのファビコンを生成
convert logo.jpeg -resize 16x16 favicon-16x16.png
convert logo.jpeg -resize 32x32 favicon-32x32.png
convert logo.jpeg -resize 48x48 favicon-48x48.png
convert logo.jpeg -resize 64x64 favicon-64x64.png
convert logo.jpeg -resize 128x128 favicon-128x128.png
convert logo.jpeg -resize 256x256 favicon-256x256.png

# ICOファイルを作成（複数サイズを含む）
convert logo.jpeg -define icon:auto-resize=64,48,32,16 favicon.ico

# Apple Touch Icon
convert logo.jpeg -resize 180x180 apple-touch-icon.png

# Android Chrome用
convert logo.jpeg -resize 192x192 android-chrome-192x192.png
convert logo.jpeg -resize 512x512 android-chrome-512x512.png

echo "ファビコンの生成が完了しました！"
echo ""
echo "生成されたファイル："
ls -la favicon* apple-touch-icon.png android-chrome*.png 2>/dev/null

echo ""
echo "注意: logo.jpegファイルが正しくコピーされていることを確認してください。"