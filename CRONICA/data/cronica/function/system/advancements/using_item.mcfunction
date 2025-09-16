# スコア設置
scoreboard objectives add SCORE.cronica.STATUS.ItemUsing dummy
scoreboard objectives add SCORE.cronica.STATUS.ItemUsed dummy

# スコア増加
scoreboard players add @a[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.ItemUsing 1
scoreboard players set @a[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.ItemUsed 1

# Advancement解除
advancement revoke @s only cronica:player/using_item