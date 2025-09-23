# スコア設置
scoreboard objectives add SCORE.cronica.STATUS.ItemUsing dummy
scoreboard objectives add SCORE.cronica.STATUS.ItemUsed dummy

# スコア増加
scoreboard players add @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.ItemUsing 1
scoreboard players set @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.ItemUsed 1

# 関数実施
execute as @s[tag=TAG.cronica.GAMING] run function cronica:player/status/check/boot/using/main

# Advancement解除
advancement revoke @s only cronica:player/using_item