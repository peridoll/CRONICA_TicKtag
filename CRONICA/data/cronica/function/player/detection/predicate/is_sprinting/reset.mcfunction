# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSprinting
      tag @s remove TAG.cronica.STATUS.IsSprinted

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.IsSprinting
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSprinting = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.IsSprinting
# =================================================================================================
# ver 0.13.0
