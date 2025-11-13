# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime
      $scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal
      $scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack
      $scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0.. }] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal
      $execute unless entity @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0.. }] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack
      $execute unless entity @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0.. }] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0.. }] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime
# =================================================================================================
# ver 0.12.0
