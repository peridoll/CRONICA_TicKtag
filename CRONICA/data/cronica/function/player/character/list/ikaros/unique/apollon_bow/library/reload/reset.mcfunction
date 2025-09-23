



# スコア管理
scoreboard players reset @s SCORE.cronica.WEAPON.ApollonBow.Reloading
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Reloaded 0
scoreboard players reset @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack
execute if entity @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Reloading
execute if entity @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Reloaded
execute if entity @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.ReloadStack



