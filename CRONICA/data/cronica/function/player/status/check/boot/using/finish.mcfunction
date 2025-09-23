#//////////////////////////////////////////////////////////////////////////////////////////////////
## Ikaros:ApollonBow
execute if data storage cronica:context ItemID{Value:"ApollonBow"} if data storage cronica:context ItemStatus{Value:"ready"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/shoot
#//////////////////////////////////////////////////////////////////////////////////////////////////
# スコアリセット
scoreboard players reset @s SCORE.cronica.STATUS.ItemUsing
scoreboard players set @s SCORE.cronica.STATUS.ItemUsed 0
# スコア管理
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsing
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsed