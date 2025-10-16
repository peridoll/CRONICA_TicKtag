# =================================================================================================

# スコア管理
execute as @s[tag=TAG.cronica.GAMING] run scoreboard objectives add SCORE.cronica.STATUS.ItemUsing dummy
execute as @s[tag=TAG.cronica.GAMING] run scoreboard players add @s SCORE.cronica.STATUS.ItemUsing 1

# タグ管理
execute as @s[tag=TAG.cronica.STATUS.ItemUsed] run tag @s remove TAG.cronica.STATUS.ItemUsed
execute as @s[tag=TAG.cronica.GAMING] run tag @s add TAG.cronica.STATUS.ItemUsing

# アイテム使用検知関数実行
execute as @s[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.ItemUsing matches 1 run function cronica:player/status/detection/advancements/using_item/main
# =================================================================================================
