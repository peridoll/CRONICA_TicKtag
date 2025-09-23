# スコア管理
scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.charging dummy
scoreboard players add @s SCORE.cronica.WEAPON.ApollonBow.charging 1
scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.charged dummy
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.charged 1

# タグ管理
tag @s add TAG.cronica.CHARACTER.ApollonBow.Charging

# キャンセル
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.charged=0}] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/charge/cancel
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.charged 0

# ループ
execute if entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.charging=0..}] run schedule function cronica:player/character/list/ikaros/unique/apollon_bow/library/charge/main 2t