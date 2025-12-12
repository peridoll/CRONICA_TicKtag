# =================================================================================================

##【 REFRESH 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsJumping
      tag @s remove TAG.cronica.STATUS.IsJumped

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.IsJumping
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsJumping = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.IsJumping
# =================================================================================================
# ver 0.13.0
