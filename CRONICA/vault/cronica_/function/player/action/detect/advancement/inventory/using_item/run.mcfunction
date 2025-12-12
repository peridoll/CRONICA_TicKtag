# =================================================================================================

##【 DETECTION LIBRARY 】
# 行動検知, 鎖状実行

  ## データ管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.STATUS.ItemUsing dummy
      scoreboard players add @s SCORE.cronica.STATUS.ItemUsing 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.ItemUsed
      tag @s add TAG.cronica.STATUS.ItemUsing

    # ストレージ管理

      # 実行中アイテム情報初期化
        data remove storage cronica:temp ItemUsing
        data modify storage cronica:temp ItemUsing.StorageName set value "ItemUsing"

      # 実行中アイテム情報取得

        # オフハンド情報取得
          data modify storage cronica:temp ItemUsing.OffHand.ItemStatus \
            set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
          execute if data storage cronica:temp ItemUsing.OffHand{ItemStatus: ready} run \
            data modify storage cronica:temp ItemUsing.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID

        # メインハンド情報取得
          data modify storage cronica:temp ItemUsing.MainHand.ItemStatus \
            set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
          execute if data storage cronica:temp ItemUsing.MainHand{ItemStatus: ready} run \
            data modify storage cronica:temp ItemUsing.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

        # キャラクター情報取得
          function cronica:system/data/storage/character/macro/get with storage cronica:temp ItemUsing



  ## 後続処理呼び出し

    # アイテム使用時処理
      function cronica:player/action/detect/advancement/inventory/using_item/macro/character_boot with storage cronica:temp ItemUsing



  ## データ管理

    # ストレージ削除
      data remove storage cronica:temp ItemUsing
# =================================================================================================
# ver 0.13.0
