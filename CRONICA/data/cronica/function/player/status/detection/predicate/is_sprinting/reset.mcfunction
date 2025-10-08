# =================================================================================================

# タグ管理
tag @s remove TAG.cronica.DETECT.IsSprinting
tag @s remove TAG.cronica.DETECT.IsSprinted

# スコア管理
scoreboard players reset @s SCORE.cronica.DETECT.IsSprinting
execute unless entity @a[scores={SCORE.cronica.DETECT.IsSprinting=0..}] run scoreboard objectives remove SCORE.cronica.DETECT.IsSprinting
# =================================================================================================
