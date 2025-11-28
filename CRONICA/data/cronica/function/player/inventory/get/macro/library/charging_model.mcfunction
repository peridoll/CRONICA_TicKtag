# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ管理

    # スコア管理
      # アイテムモードの数字からチャージ数を計算
      # 例: モードスコアが -103 の場合、チャージ数は 3 なので、Charging_3 が対象となる
      $scoreboard objectives add SCORE.cronica.INVENTORY.$(ItemID).ChargeNum dummy
      $execute store result score @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum run scoreboard players get @s SCORE.cronica.MODE.$(ItemID)
      $scoreboard players add @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum 100
      $scoreboard players operation @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum *= #-1 SCORE.cronica.CONFIG
      $execute store result storage cronica:temp CharacterGet.ChargeNum int 1 run scoreboard players get @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum
      $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).ChargeNum

  ## プレイヤー管理

    # アイテム置き換え
      function cronica:player/inventory/get/macro/library/charging_model_lib with storage cronica:temp CharacterGet
# =================================================================================================
# ver 0.13.0
