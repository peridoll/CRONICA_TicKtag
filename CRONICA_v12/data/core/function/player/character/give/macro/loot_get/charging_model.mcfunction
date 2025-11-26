# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).ChargeNum dummy
      $execute store result score @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum run \
        scoreboard players get @s SCORE.cronica.MODE.$(ItemID)
      $scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum 100
      $execute store result storage cronica:temp CharacterGive.ChargeNum int 1 run \
        scoreboard players get @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum
      $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).ChargeNum

  ## プレイヤー管理

    # アイテム置き換え
      function core:player/character/give/macro/loot_get/charging_model_lib with storage cronica:temp CharacterGive
# =================================================================================================
# ver 0.12.0
