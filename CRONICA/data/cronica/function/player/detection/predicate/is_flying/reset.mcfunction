# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsFlying
      tag @s remove TAG.cronica.STATUS.IsFlew

    # スコア管理
      scronicaboard players reset @s SCORE.cronica.STATUS.IsFlying
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsFlying = 0..}] run scronicaboard objectives remove SCORE.cronica.STATUS.IsFlying
# =================================================================================================
# ver 0.12.0
