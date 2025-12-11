# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ管理

    # スコア管理

      # 基本スタック数設定
        # ここで指定された数値分、アイテムを入手する
        $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).StackCount dummy
        $scoreboard players set @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1

      # コンフィグ読み込み
        # 参照コンフィグから基本スタック数を取得し、スタック数スコアに設定する
        # "アイテムID".CustomData.DefaultStack
        $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).DefaultStack dummy
        $execute store result score @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack run \
          data get storage cronica:config $(ItemID).CustomData.DefaultStack
        $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack matches 1.. run \
          scoreboard players operation @s SCORE.cronica.INVENTORY.$(ItemID).StackCount = @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack
        $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).DefaultStack



  ## アイテム入手

    # 練習場でのスロットリセットタグ：スニーク状態で取得しようとするとスロットをリセットする
      execute if entity @s[ tag = TAG.cronica.GAMING.practice, tag = TAG.cronica.STATUS.IsSneaking] run \
        tag @s add TAG.cronica.INVENTORY.ResetSavingSlot

    # スロット登録済みアイテム入手 & 単一アイテム入手
      execute if entity @s[ tag =! TAG.cronica.INVENTORY.ResetSavingSlot ] run \
        function cronica:player/inventory/get/macro/library/loading_slot with storage cronica:temp CharacterGet

    # スロット未登録アイテム入手 & 複数アイテム入手
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).StackCount matches 1.. run \
        function cronica:player/inventory/get/macro/library/count_loot with storage cronica:temp CharacterGet

    # アイテム情報記入
      function cronica:player/inventory/get/macro/library/refined_lore with storage cronica:temp CharacterGet



  ## データ管理

    # タグ消し
      tag @s remove TAG.cronica.INVENTORY.ResetSavingSlot

    # スコア削除
      $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).StackCount
# =================================================================================================
# ver 0.13.0
