# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常実行、マクロ、手動実行不可

  ## データ管理

    # 所持個数管理

      # スコア作成
        $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).StackCount dummy
        $scoreboard players set @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1
        $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).DefaultStack dummy

      # コンフィグ読み込み
        $execute store result score @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack run \
          data get storage cronica:config $(MasterID).$(ItemID).CustomData.DefaultStack
        $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack matches 1.. run \
          scoreboard players operation @s SCORE.cronica.INVENTORY.$(ItemID).StackCount = @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack

    # ストレージ管理

      # UUID取得
        $function core:system/data/storage/uuid/macro/get with storage cronica:temp $(StorageName)

  ## アイテム入手

    # スロット登録済みアイテム入手 & 単一アイテム入手
      $function core:player/character/give/macro/loot_get/loading_slot with storage cronica:temp $(StorageName)

    # スロット未登録アイテム入手 & 複数アイテム入手
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).StackCount matches 1.. run \
        function core:player/character/give/macro/loot_get/count_loot with storage cronica:temp $(StorageName)

    # アイテム情報記入
      # TODO: アイテムステータス機能実装後に対応

  ## データ管理

    # スコア削除
      $scoreboard players reset @s SCORE.cronica.INVENTORY.$(ItemID).StackCount
      $scoreboard players reset @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack
# =================================================================================================
# ver 0.12.0
