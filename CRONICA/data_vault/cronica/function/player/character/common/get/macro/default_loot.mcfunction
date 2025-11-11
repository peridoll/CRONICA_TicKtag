# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア作成
      $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).Count dummy
      $scoreboard players set @s SCORE.cronica.INVENTORY.$(ItemID).Count 1
      $execute if score #CONFIG.cronica.INVENTORY.$(ItemID).Stack SCORE.cronica.CONFIG matches 1.. run \
        scoreboard players operation @s SCORE.cronica.INVENTORY.$(ItemID).Count = #CONFIG.cronica.INVENTORY.$(ItemID).Stack SCORE.cronica.CONFIG

  ## アイテム入手

    # スロットロード
      function cronica:player/character/common/get/macro/loading_slot with storage cronica:temp CommonGet

    # アイテム複数回入手
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).Count matches 1.. run \
        function cronica:player/character/common/get/macro/count_loot with storage cronica:temp CommonGet
# =================================================================================================
# ver 0.11.0
