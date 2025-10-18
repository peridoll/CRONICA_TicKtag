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
    execute if entity @s[tag = TAG.cronica.STATUS.IsSneaked] run function cronica:player/status/detection/predicate/is_sneaking/finish
    tag @s add TAG.cronica.STATUS.IsSneaked
# =================================================================================================
# ver 0.10.3
