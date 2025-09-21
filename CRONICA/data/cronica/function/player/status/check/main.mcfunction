# 使用検知
execute as @a[tag=TAG.cronica.GAMING] as @s[tag=!TAG.cronica.STATUS.ItemUsing] run function cronica:player/status/check/boot/using/main
execute as @a[tag=TAG.cronica.GAMING] as @s[tag=!TAG.cronica.STATUS.ItemUsing] run schedule function cronica:player/status/check/boot/using/main 2t
execute as @a[tag=TAG.cronica.GAMING] run tag @s remove TAG.cronica.STATUS.ItemUsing

# スニーク判定
tag @a[tag=TAG.cronica.SNEAKING] remove TAG.cronica.SNEAKING
execute unless entity @a[scores={SCORE.cronica.STATUS.Sneak=1..}] run scoreboard objectives remove SCORE.cronica.STATUS.Sneak
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:sneak run function cronica:player/status/check/boot/sneak