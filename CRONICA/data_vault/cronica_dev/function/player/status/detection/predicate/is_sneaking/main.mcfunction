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

##【 REPEAT 】

  # 使用終了検知
    execute if entity @s[tag = TAG.cronica_dev.STATUS.IsSneaked] run function cronica_dev:player/status/detection/predicate/is_sneaking/finish
    tag @s[scores = {SCORE.cronica_dev.STATUS.IsSneaking = 0..}] add TAG.cronica_dev.STATUS.IsSneaked
# =================================================================================================
# ver 0.10.3
