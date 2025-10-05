# =================================================================================================

# タグ管理
tag @s remove TAG.cronica.DETECT.ItemUsing
tag @s remove TAG.cronica.DETECT.ItemUsed

# スコア管理
scoreboard players reset @s SCORE.cronica.DETECT.ItemUsing
execute unless entity @a[scores={SCORE.cronica.DETECT.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.DETECT.ItemUsing
# =================================================================================================
