# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather_ex.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.SKILL.flying_feather_ex.ActivateTime
# =================================================================================================
# ver 0.12.0
