# =================================================================================================

##【 REFRESH 】

  # タグ管理
    tag @s remove TAG.cronica.WEAPON.apollon_bow.Reloading
    tag @s remove TAG.cronica.WEAPON.apollon_bow.Reloaded

  # スコア管理
    scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reloading
    execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reloading
# =================================================================================================
# ver 0.10.3
