# スコアリセット
scoreboard players reset @s SCORE.cronica.STATUS.ItemUsing
scoreboard players set @s SCORE.cronica.STATUS.ItemUsed 0
# スコア管理
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsing
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsed