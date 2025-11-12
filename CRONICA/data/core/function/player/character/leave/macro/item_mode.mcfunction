# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常実行、マクロ、手動実行不可

  ## スコア管理

    # アイテムモード
      $scoreboard players reset @s SCORE.cronica.MODE.$(ItemID)
      $execute unless entity @a[scores = {SCORE.cronica.MODE.$(ItemID) = -99..}] run \
        scoreboard objectives remove SCORE.cronica.MODE.$(ItemID)
# =================================================================================================
# ver 0.12.0
