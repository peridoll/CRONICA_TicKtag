# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 目標値
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Goal dummy
      execute store result score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal run \
        data get storage cronica:config apollon_bow.CustomData.ReloadTime

    # 積算値
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count dummy
      scoreboard players set @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count -1

    # 積算目標値
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal dummy
      scoreboard players operation @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal = @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal
      scoreboard players operation @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal /= #10 SCORE.cronica.CONFIG
# =================================================================================================
# ver 0.13.0
