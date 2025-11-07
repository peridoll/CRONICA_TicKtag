# アイテム関連設計・運用ガイド

このドキュメントは、CRONICAデータパックの「アイテム関連」実装について、新規参入者向けに概要・運用方法・注意点をまとめたものです。

## 1. アイテム関連主要ディレクトリ
- data/cronica/item_modifier/ ... アイテムの状態・属性・モデル切替等のjson定義
- data/cronica/loot_table/character/ ... キャラクターごとのアイテム・スキル・武器のloot table
- data/cronica/function/player/character/.../item_using.mcfunction ... アイテム使用時の処理関数

## 2. ファイル構成と役割
- item_modifier/*.json ... アイテムの状態変化やモデル切替を定義。例：used.json, default.json, ammo.json
- loot_table/*.json ... アイテムの生成・付与・属性設定。custom_dataでIDや状態を管理
- function/*item_using.mcfunction ... アイテム使用時の挙動（消費、効果発動、状態変更など）

## 3. 運用・編集時の注意
- custom_dataの"ItemID"、"ItemStatus"、"ItemMode"は一貫して管理すること
- モデル切替はitem_modifierで定義し、functionで呼び出す
- キャラクターごとにディレクトリ分割されているため、追加時は命名規則・階層を統一

## 4. よくある質問
- Q: 新アイテム追加時は？
  A: loot_tableでjson定義→item_modifierで状態定義→functionで使用処理追加
- Q: モデル切替が反映されない
  A: custom_model_dataやitem_modifierの参照先を確認

## 5. 参考
- 各json・mcfunctionファイルの先頭に役割・使い方コメントを追加推奨
- 詳細は各ディレクトリのREADMEやtodo.mdも参照

---
このガイドは随時更新します。新規追加・修正時は本ドキュメントも更新してください。
