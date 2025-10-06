# =================================================================================================

# スコア管理
execute as @s[tag=TAG.cronica.GAMING] run scoreboard objectives add SCORE.cronica.DETECT.ItemUsing dummy
execute as @s[tag=TAG.cronica.GAMING] run scoreboard players add @s SCORE.cronica.DETECT.ItemUsing 1

# タグ管理
execute as @s[tag=TAG.cronica.DETECT.ItemUsed] run tag @s remove TAG.cronica.DETECT.ItemUsed
execute as @s[tag=TAG.cronica.GAMING] run tag @s add TAG.cronica.DETECT.ItemUsing

# アイテム使用検知関数実行
execute as @s[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.DETECT.ItemUsing matches 1 run function cronica:player/status/detection/advancements/using_item/main

# 実績解除
advancement revoke @s only cronica:using_item
# =================================================================================================
