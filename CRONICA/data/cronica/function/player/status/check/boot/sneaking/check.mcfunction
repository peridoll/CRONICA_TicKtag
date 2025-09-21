# スコア設置
scoreboard objectives add SCORE.cronica.STATUS.Sneaking dummy
scoreboard objectives add SCORE.cronica.STATUS.Sneaked dummy

# スコア増加
scoreboard players add @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.Sneaking 1
scoreboard players set @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.Sneaked 1

# 関数実施
execute as @s[tag=TAG.cronica.GAMING] run function cronica:player/status/check/boot/sneaking/main
tag @s add TAG.cronica.SNEAKING