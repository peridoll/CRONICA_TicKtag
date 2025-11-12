# =================================================================================================
#
# CRONICA - PREDICATE IS SNEAKING DETECTION
#
# run
# |
# main
# └─ finish
#   └─ reset
#
# =================================================================================================

##【 REFRESH 】

  # タグ管理
    tag @s remove TAG.cronica_dev.STATUS.IsSneaking
    tag @s remove TAG.cronica_dev.STATUS.IsSneaked

  # スコア管理
    scoreboard players reset @s SCORE.cronica_dev.STATUS.IsSneaking
    execute unless entity @a[scores = {SCORE.cronica_dev.STATUS.IsSneaking = 0..}] run scoreboard objectives remove SCORE.cronica_dev.STATUS.IsSneaking
# =================================================================================================
# ver 0.10.3
