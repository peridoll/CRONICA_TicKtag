# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.TIMER.wind_knowledge.ActivateTime
      scoreboard players reset @s SCORE.cronica.TIMER.wind_knowledge.Activate.Goal
      execute unless entity @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.TIMER.wind_knowledge.Activate.Goal
      execute unless entity @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.TIMER.wind_knowledge.ActivateTime
# =================================================================================================
# ver 0.12.0
