# アイテム用ファンクション要約

このドキュメントは、各アイテム用ファンクション（item_using.mcfunction）の処理内容を簡潔にまとめたものです。

---

## ikaros/unique/apollon_bow/boot/item_using.mcfunction
- プレイヤーが「Apollon Bow」を使用中か判定
- ゲーム中（TAG.cronica.GAMING）かつ、SCORE.cronica.STATUS.ItemUsingが1以上の場合、チャージ処理（cronica:player/character/common/charge/macro/run）を実行
- チャージ設定はstorage cronica:config ApollonBowChargeで管理

## ikaros/select/flying_feather/boot/item_using.mcfunction
- プレイヤーが「Flying Feather」を使用中か判定
- ゲーム中（TAG.cronica.GAMING）かつ、SCORE.cronica.STATUS.ItemUsingが1の場合、専用処理（cronica:player/character/ikaros/select/flying_feather/library/run）を実行

---

今後も新規アイテムファンクションの要約を随時追加します。
