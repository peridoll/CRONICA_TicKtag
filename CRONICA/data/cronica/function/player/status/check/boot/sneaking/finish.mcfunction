
## Ikaros
# ApollonBow
execute if data storage cronica:context ItemID{Value:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload_cansel

#//////////////////////////////////////////////////////////////////////////////////////////////////

# タグリセット
tag @s remove TAG.cronica.STATUS.Sneaking
# スコアリセット
scoreboard players reset @s SCORE.cronica.STATUS.Sneaking
scoreboard players set @s SCORE.cronica.STATUS.Sneaked 0
# スコア管理
execute unless entity @a[scores={SCORE.cronica.STATUS.Sneaking=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.Sneaking
execute unless entity @a[scores={SCORE.cronica.STATUS.Sneaking=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.Sneaked