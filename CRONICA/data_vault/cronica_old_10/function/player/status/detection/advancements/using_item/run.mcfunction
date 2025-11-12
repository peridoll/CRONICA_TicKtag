# =================================================================================================
#
# CRONICA - ADVANCEMENTS USING ITEM DETECTION
#
# grant
# └─ run
#   └─ get_main_hand
#   └─ get_off_hand
#   └─ character_boot
#   └─ other_boot
# |
# main
# └─ finish
#   └─ reset
#
# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica_dev.STATUS.ItemUsing dummy
      scoreboard players add @s SCORE.cronica_dev.STATUS.ItemUsing 1

    # タグ管理
      tag @s remove TAG.cronica_dev.STATUS.ItemUsed
      tag @s add TAG.cronica_dev.STATUS.ItemUsing

  ## データ取得
  # /* メインハンドを優先実行するため、オフハンドを取得したのちにメインハンドを取得して塗りつぶす */

    # オフハンド取得
      data modify storage cronica_dev:temp ItemUsing.OffHandStatus set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
      execute if data storage cronica_dev:temp ItemUsing{OffHandStatus: ready} run function cronica_dev:player/status/detection/advancements/using_item/get_off_hand

    # メインハンド取得
      data modify storage cronica_dev:temp ItemUsing.MainHandStatus set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
      execute if data storage cronica_dev:temp ItemUsing{MainHandStatus: ready} run function cronica_dev:player/status/detection/advancements/using_item/get_main_hand

  ## 後続処理呼び出し

    # アイテム使用時処理
      function cronica_dev:player/status/detection/advancements/using_item/character_boot with storage cronica_dev:temp ItemUsing
      function cronica_dev:player/status/detection/advancements/using_item/other_boot with storage cronica_dev:temp ItemUsing

##【 REFRESH 】

  # ストレージ削除
    data remove storage cronica_dev:temp ItemUsing
# =================================================================================================
# ver 0.10.3
