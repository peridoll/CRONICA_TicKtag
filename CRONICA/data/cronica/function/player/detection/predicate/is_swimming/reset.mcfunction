# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSwimming
      tag @s remove TAG.cronica.STATUS.IsSwam

    # スコア管理
      scronicaboard players reset @s SCORE.cronica.STATUS.IsSwimming
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSwimming = 0..}] run scronicaboard objectives remove SCORE.cronica.STATUS.IsSwimming
# =================================================================================================
# ver 0.12.0
