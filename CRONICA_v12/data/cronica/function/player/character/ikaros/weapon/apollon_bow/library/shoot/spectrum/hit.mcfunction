# =================================================================================================

##【 IMPULSE 】

  ## 装飾

    # パーティクル
      particle minecraft:flash{color:-13000} ~ ~ ~ ~ ~ ~ 0 0 force @a

  ## データ管理

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack = 1..}] run \
        scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack
# =================================================================================================
# ver 0.12.0
