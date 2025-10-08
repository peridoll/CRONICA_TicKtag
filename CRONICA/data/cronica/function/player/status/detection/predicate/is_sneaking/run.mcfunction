# =================================================================================================

# スコア管理
execute as @s[tag=TAG.cronica.GAMING] run scoreboard objectives add SCORE.cronica.DETECT.IsSneaking dummy
execute as @s[tag=TAG.cronica.GAMING] run scoreboard players add @s SCORE.cronica.DETECT.IsSneaking 1

# タグ管理
execute as @s[tag=TAG.cronica.DETECT.IsSneaked] run tag @s remove TAG.cronica.DETECT.IsSneaked
execute as @s[tag=TAG.cronica.GAMING] run tag @s add TAG.cronica.DETECT.IsSneaking
# =================================================================================================
