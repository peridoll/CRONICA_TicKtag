# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.SKILL.wind_knowledge.ActivateTime
      scoreboard players reset @s SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.SKILL.wind_knowledge.ActivateTime
# =================================================================================================
# ver 0.12.0
