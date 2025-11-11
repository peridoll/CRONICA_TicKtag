# =================================================================================================

##【 IMPULSE 】
# 通常実行、マクロ、手動実行不可

  ## データ管理

    # スコア作成
      $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).StackCount dummy
      $scoreboard players set @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1
      $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).DefaultStack dummy

    # コンフィグ読み込み
      $execute store result score @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack run \
        data get storage cronica:config $(MasterID).$(ItemID).CustomData.DefaultStack
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack matches 1.. run \
        scoreboard players operation @s SCORE.cronica.INVENTORY.$(ItemID).StackCount = @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack

  ## アイテム入手

    # スロットロード
      function cronica_lib:player/character/give/macro/loading_slot with storage cronica:temp CharacterGive

    # アイテム複数回入手
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).StackCount matches 1.. run \
        function cronica_lib:player/character/give/macro/count_loot with storage cronica:temp CharacterGive

  ## データ管理

    # スコア削除
      $scoreboard players reset @s SCORE.cronica.INVENTORY.$(ItemID).StackCount
      $scoreboard players reset @s SCORE.cronica.INVENTORY.$(ItemID).DefaultStack
# =================================================================================================
# ver 0.12.0
