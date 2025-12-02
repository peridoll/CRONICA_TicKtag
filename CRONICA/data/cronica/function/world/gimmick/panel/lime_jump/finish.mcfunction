# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s levitation

  ## データ管理

    # スコア管理
      scoreboard players reset @s SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime = 1..}] run \
        scoreboard objectives remove SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime
# =================================================================================================
# ver 0.13.0
