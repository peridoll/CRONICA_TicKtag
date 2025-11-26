# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.CHARACTER.judgment_stone.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.CHARACTER.judgment_stone.ActivateTime
# =================================================================================================
# ver 0.12.0
