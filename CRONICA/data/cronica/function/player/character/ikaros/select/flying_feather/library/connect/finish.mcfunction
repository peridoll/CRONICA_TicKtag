# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s minecraft:resistance

  ## データ管理

    # スコア管理
      scoreboard players reset @s SCORE.cronica.CHARACTER.flying_feather.Connect.Activate
      execute unless entity @a[scores = {SCORE.cronica.CHARACTER.flying_feather.Connect.Activate = 1..}] run \
        scoreboard objectives remove SCORE.cronica.CHARACTER.flying_feather.Connect.Activate
# =================================================================================================
# ver 0.12.0
