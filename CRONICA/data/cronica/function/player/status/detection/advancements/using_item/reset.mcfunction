# =================================================================================================

# タグ管理
tag @s remove TAG.cronica.STATUS.ItemUsing
tag @s remove TAG.cronica.STATUS.ItemUsed

# スコア管理
scoreboard players reset @s SCORE.cronica.STATUS.ItemUsing
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsing
# =================================================================================================
