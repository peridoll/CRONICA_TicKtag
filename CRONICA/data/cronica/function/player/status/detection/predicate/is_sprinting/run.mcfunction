# =================================================================================================

# スコア管理
execute as @s[tag=TAG.cronica.GAMING] run scoreboard objectives add SCORE.cronica.STATUS.IsSprinting dummy
execute as @s[tag=TAG.cronica.GAMING] run scoreboard players add @s SCORE.cronica.STATUS.IsSprinting 1

# タグ管理
execute as @s[tag=TAG.cronica.STATUS.IsSprinted] run tag @s remove TAG.cronica.STATUS.IsSprinted
execute as @s[tag=TAG.cronica.GAMING] run tag @s add TAG.cronica.STATUS.IsSprinting
# =================================================================================================
