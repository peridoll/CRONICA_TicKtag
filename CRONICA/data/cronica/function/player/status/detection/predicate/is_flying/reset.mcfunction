# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsFlying
      tag @s remove TAG.cronica.STATUS.IsFlew

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.IsFlying
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsFlying = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.IsFlying
# =================================================================================================
# ver 0.11.0
