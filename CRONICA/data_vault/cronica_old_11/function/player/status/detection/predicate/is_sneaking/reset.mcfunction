# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaking
      tag @s remove TAG.cronica.STATUS.IsSneaked

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.IsSneaking
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSneaking = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.IsSneaking
# =================================================================================================
# ver 0.11.0
