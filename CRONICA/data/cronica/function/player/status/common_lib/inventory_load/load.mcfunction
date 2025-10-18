# =================================================================================================

##【 IMPULSE 】

  ## データ取得

    # スロット取得
      scoreboard objectives add SCORE.cronica.STATUS.GetInventory dummy
      scoreboard players set @s SCORE.cronica.STATUS.GetInventory -1
      $execute store result score @s SCORE.cronica.STATUS.GetInventory run data get storage cronica:personal/$(UUID)/inventory/slot $(ItemID)













##【 REFRESH 】

  # スコア撤去
    scoreboard objectives remove SCORE.cronica.STATUS.GetInventory
# =================================================================================================
# ver 0.10.3
