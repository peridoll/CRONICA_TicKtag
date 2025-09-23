# タグリセット
tag @s remove TAG.cronica.CHARACTER.ApollonBow.Charging
# スコアリセット
scoreboard players reset @s SCORE.cronica.WEAPON.ApollonBow.charging
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.charged 0
execute unless entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.charging=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.charging
execute unless entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.charging=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.charged