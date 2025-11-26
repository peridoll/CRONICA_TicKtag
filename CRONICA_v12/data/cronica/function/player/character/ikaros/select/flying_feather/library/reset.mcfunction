# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.ActivateTime
# =================================================================================================
# ver 0.12.0
