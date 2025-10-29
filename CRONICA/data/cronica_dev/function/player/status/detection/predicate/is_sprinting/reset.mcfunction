# =================================================================================================

# タグ管理
tag @s remove TAG.cronica_dev.STATUS.IsSprinting
tag @s remove TAG.cronica_dev.STATUS.IsSprinted

# スコア管理
scoreboard players reset @s SCORE.cronica_dev.STATUS.IsSprinting
execute unless entity @a[scores={SCORE.cronica_dev.STATUS.IsSprinting=0..}] run scoreboard objectives remove SCORE.cronica_dev.STATUS.IsSprinting
# =================================================================================================
