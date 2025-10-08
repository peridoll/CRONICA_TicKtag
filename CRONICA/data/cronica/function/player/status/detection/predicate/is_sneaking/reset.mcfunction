# =================================================================================================

# タグ管理
tag @s remove TAG.cronica.DETECT.IsSneaking
tag @s remove TAG.cronica.DETECT.IsSneaked

# スコア管理
scoreboard players reset @s SCORE.cronica.DETECT.IsSneaking
execute unless entity @a[scores={SCORE.cronica.DETECT.IsSneaking=0..}] run scoreboard objectives remove SCORE.cronica.DETECT.IsSneaking
# =================================================================================================
