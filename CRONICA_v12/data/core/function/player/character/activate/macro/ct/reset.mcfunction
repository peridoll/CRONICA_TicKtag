# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Goal
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).CoolTime
# =================================================================================================
# ver 0.12.0
