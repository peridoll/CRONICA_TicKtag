# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).RecastTime
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).RecastTime
# =================================================================================================
# ver 0.13.0
