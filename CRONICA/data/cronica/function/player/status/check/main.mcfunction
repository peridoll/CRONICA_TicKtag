# 使用検知
execute as @a[tag=TAG.cronica.GAMING] as @s[tag=!TAG.cronica.STATUS.ItemUsing] run function cronica:player/status/check/boot/using/main
execute as @a[tag=TAG.cronica.GAMING] as @s[tag=!TAG.cronica.STATUS.ItemUsing] run schedule function cronica:player/status/check/boot/using/main 2t
execute as @a[tag=TAG.cronica.GAMING] run tag @s remove TAG.cronica.STATUS.ItemUsing

# スニーク判定
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:sneak run function cronica:player/status/check/boot/sneaking/check
execute as @a[tag=TAG.cronica.GAMING] run function cronica:player/status/check/boot/sneaking/main
execute as @a[tag=TAG.cronica.GAMING] run schedule function cronica:player/status/check/boot/sneaking/main 2t