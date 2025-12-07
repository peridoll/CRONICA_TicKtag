# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.SKILL.$(ItemID).RecastTime
      $scoreboard players reset @s SCORE.cronica.SKILL.$(ItemID).Recast.Goal
      $scoreboard players reset @s SCORE.cronica.SKILL.$(ItemID).Recast.Stack
      $scoreboard players reset @s SCORE.cronica.SKILL.$(ItemID).Recast.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.SKILL.$(ItemID).Recast.Goal
      $execute unless entity @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.SKILL.$(ItemID).Recast.Stack
      $execute unless entity @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.SKILL.$(ItemID).Recast.Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0.. }] run scoreboard objectives remove SCORE.cronica.SKILL.$(ItemID).RecastTime
# =================================================================================================
# ver 0.13.0
