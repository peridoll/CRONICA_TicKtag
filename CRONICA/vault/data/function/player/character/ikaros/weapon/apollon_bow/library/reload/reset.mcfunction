# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動禁止解除
      effect clear @s minecraft:slowness

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Reloaded
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Reloading

    # スコア管理
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reloading
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count
      execute unless entity @a[ scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Goal
      execute unless entity @a[ scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Stack
      execute unless entity @a[ scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal
      execute unless entity @a[ scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count
      execute unless entity @a[ scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reloading
# =================================================================================================
# ver 0.13.0
