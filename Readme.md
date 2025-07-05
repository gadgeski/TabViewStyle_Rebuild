# TabViewStyle_Rebuild

SwiftUI の TabView を使用したシンプルなタブベースの iOS アプリケーションです。

## 概要

このアプリケーションは 3 つのタブから構成されており、それぞれ異なる機能を持っています：

- **Home** - ホーム画面
- **お天気** - 天気情報画面
- **ニュース** - ニュース画面

## 機能

### タブ構成

1. **Home タブ**

   - アイコン: `house`
   - 基本的なホーム画面を表示
   - タグ: 1

2. **お天気 タブ**

   - アイコン: `cloud.sun`
   - 天気情報を表示する画面
   - バッジ: 1
   - 背景色: ミントグリーン（透明度 20%）
   - タグ: 2

3. **ニュース タブ**
   - アイコン: `newspaper`
   - ニュース情報を表示する画面
   - バッジ: 2
   - タグ: 3

### UI 特徴

- 各タブには 100x100 のシステムアイコンが表示
- テキストサイズは 20pt に設定
- 天気タブには薄いミントグリーンの背景色が適用
- タブには通知バッジが表示される仕組み

## 技術仕様

- **開発言語**: Swift
- **フレームワーク**: SwiftUI
- **対応プラットフォーム**: iOS 18.4+, macOS 15.4+, visionOS 2.4+
- **Xcode バージョン**: 16.3+
- **Swift バージョン**: 5.0

## プロジェクト構成

```
TabViewStyle_Rebuild/
├── TabViewStyle_Rebuild.xcodeproj/
├── TabViewStyle_Rebuild/
│   ├── Assets.xcassets/
│   │   ├── AccentColor.colorset/
│   │   ├── AppIcon.appiconset/
│   │   └── Contents.json
│   ├── ContentView.swift
│   ├── TabViewStyle_RebuildApp.swift
│   └── TabViewStyle_Rebuild.entitlements
├── .gitignore
└── README.md
```

## セットアップ

1. Xcode でプロジェクトファイル (`TabViewStyle_Rebuild.xcodeproj`) を開く
2. 対象デバイスまたはシミュレーターを選択
3. ⌘+R でビルド＆実行

## コード構造

### MainView (ContentView)

- `TabView`を使用してタブインターフェースを実装
- `@State`でタブの選択状態を管理
- 各タブビューを定義

### 各タブビュー

- `HomeTabView`: ホーム画面の表示
- `WeatherTabView`: 天気情報画面（背景色付き）
- `NewsTabView`: ニュース画面

### プレビュー

各ビューには SwiftUI Preview が設定されており、Xcode 上でリアルタイムプレビューが可能です。

## 注意事項

- このアプリケーションは UI 構造のデモンストレーション用途で作成されています
- 実際のデータ取得機能は実装されていません
- 天気やニュースの情報は静的なプレースホルダーです
