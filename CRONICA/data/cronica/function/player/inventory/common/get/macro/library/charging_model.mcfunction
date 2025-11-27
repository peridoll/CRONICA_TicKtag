# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ管理

    # スコア管理
      # アイテムモードの数字からチャージ数を計算
      # 例: モードスコアが -103 の場合、チャージ数は 3 なので、Charging_3 が対象となる
      $scronicaboard objectives add SCORE.cronica.INVENTORY.$(ItemID).ChargeNum dummy
      $execute store result scronica @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum run scronicaboard players get @s SCORE.cronica.MODE.$(ItemID)
      $scronicaboard players add @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum 100
      $execute store result storage cronica:temp CharacterGive.ChargeNum int 1 run scronicaboard players get @s SCORE.cronica.INVENTORY.$(ItemID).ChargeNum
      $scronicaboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).ChargeNum

  ## プレイヤー管理

    # アイテム置き換え
      function cronica:player/inventory/common/get/macro/library/charging_model_lib with storage cronica:temp CharacterGive
# =================================================================================================
# ver 0.13.0
