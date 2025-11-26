# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.CHARACTER.blazing_shield.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.CHARACTER.blazing_shield.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.CHARACTER.blazing_shield.ActivateTime
# =================================================================================================
# ver 0.12.0
