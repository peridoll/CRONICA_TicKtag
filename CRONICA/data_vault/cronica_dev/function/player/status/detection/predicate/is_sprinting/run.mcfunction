# =================================================================================================

# スコア管理
execute as @s[tag=TAG.cronica_dev.GAMING] run scoreboard objectives add SCORE.cronica_dev.STATUS.IsSprinting dummy
execute as @s[tag=TAG.cronica_dev.GAMING] run scoreboard players add @s SCORE.cronica_dev.STATUS.IsSprinting 1

# タグ管理
execute as @s[tag=TAG.cronica_dev.STATUS.IsSprinted] run tag @s remove TAG.cronica_dev.STATUS.IsSprinted
execute as @s[tag=TAG.cronica_dev.GAMING] run tag @s add TAG.cronica_dev.STATUS.IsSprinting
# =================================================================================================
