# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scronicaboard objectives add SCORE.cronica.STATUS.ItemUsing dummy
      scronicaboard players add @s[tag =! TAG.cronica.STATUS.ItemUsing.Activated] SCORE.cronica.STATUS.ItemUsing 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.ItemUsed
      tag @s add TAG.cronica.STATUS.ItemUsing

  ## データ取得
  # /* メインハンドを優先実行するため、オフハンドを取得したのちにメインハンドを取得して塗りつぶす */

    # オフハンド取得
      data modify storage cronica:temp ItemUsing.OffHandStatus set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
      execute if data storage cronica:temp ItemUsing{OffHandStatus: ready} run function cronica:player/status/detection/advancements/using_item/get_off_hand

    # メインハンド取得
      data modify storage cronica:temp ItemUsing.MainHandStatus set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
      execute if data storage cronica:temp ItemUsing{MainHandStatus: ready} run function cronica:player/status/detection/advancements/using_item/get_main_hand

  ## 後続処理呼び出し

    # アイテム使用時処理
      function cronica:player/status/detection/advancements/using_item/character_boot with storage cronica:temp ItemUsing
      function cronica:player/status/detection/advancements/using_item/other_boot with storage cronica:temp ItemUsing

##【 REFRESH 】

  # ストレージ削除
    data remove storage cronica:temp ItemUsing
# =================================================================================================
# ver 0.10.3
