# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Evolved
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Evolving

    # スコア管理
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Evolving
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Evolve.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Evolving = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Evolve.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Evolving = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Evolving
# =================================================================================================
# ver 0.13.0
