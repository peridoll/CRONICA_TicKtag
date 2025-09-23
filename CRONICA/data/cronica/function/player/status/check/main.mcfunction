## 行動検知

# 使用検知
execute as @a[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.ItemUsing matches 2.. run function cronica:player/status/check/boot/using/main
execute as @a[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.ItemUsing matches ..1 run scoreboard players set @s SCORE.cronica.STATUS.ItemUsing 2

# スニーク判定
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:sneak run function cronica:player/status/check/boot/sneaking/check
execute as @a[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.Sneaking matches 2.. run function cronica:player/status/check/boot/sneaking/main
execute as @a[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.Sneaking matches ..1 run scoreboard players set @s SCORE.cronica.STATUS.Sneaking 2