# =================================================================================================

##【 REFLESH 】

  ## データ関連管理

    # スコア撤去
      scoreboard players reset @s SCORE.cronica.INCENTORY.FullExecute.SlotNum
      execute unless entity @a[scores = {SCORE.cronica.INCENTORY.FullExecute.SlotNum = -1..}] run scoreboard objectives remove SCORE.cronica.INCENTORY.FullExecute.SlotNum
# =================================================================================================
# ver 0.11.0
