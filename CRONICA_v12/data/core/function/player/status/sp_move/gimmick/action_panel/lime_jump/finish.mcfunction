# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s levitation

  ## データ管理

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.SpMove.lime_jump.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SpMove.lime_jump.ActivateTime = 1..}] run \
        scoreboard objectives remove SCORE.cronica.STATUS.SpMove.lime_jump.ActivateTime
# =================================================================================================
# ver 0.12.0
