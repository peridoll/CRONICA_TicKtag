# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSwimming
      tag @s remove TAG.cronica.STATUS.IsSwam

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.IsSwimming
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSwimming = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.IsSwimming
# =================================================================================================
# ver 0.11.0
