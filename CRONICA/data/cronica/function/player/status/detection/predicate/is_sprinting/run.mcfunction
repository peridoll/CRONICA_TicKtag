# =================================================================================================

# スコア管理
execute as @s[tag=TAG.cronica.GAMING] run scoreboard objectives add SCORE.cronica.DETECT.IsSprinting dummy
execute as @s[tag=TAG.cronica.GAMING] run scoreboard players add @s SCORE.cronica.DETECT.IsSprinting 1

# タグ管理
execute as @s[tag=TAG.cronica.DETECT.IsSprinted] run tag @s remove TAG.cronica.DETECT.IsSprinted
execute as @s[tag=TAG.cronica.GAMING] run tag @s add TAG.cronica.DETECT.IsSprinting
# =================================================================================================
