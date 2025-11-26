# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.SpMove.climb_fence.Charged

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.SpMove.climb_fence.Charging
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SpMove.climb_fence.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SpMove.climb_fence.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SpMove.climb_fence.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SpMove.climb_fence.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SpMove.climb_fence.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SpMove.climb_fence.Charging
# =================================================================================================
