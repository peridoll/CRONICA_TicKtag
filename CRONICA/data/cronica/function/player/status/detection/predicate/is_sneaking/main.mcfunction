# =================================================================================================
#
# CRONICA - Is Sneaking Detection
#
# run
# |
# main
# └─ finish
#   └─ reset
#
# =================================================================================================

##【起動処理】

  # 使用終了検知
    execute as @s[tag = TAG.cronica.STATUS.IsSneaked, scores = {SCORE.cronica.STATUS.IsSneaking = 1..}] run \
      function cronica:player/status/detection/predicate/is_sneaking/finish
    tag @s[scores = {SCORE.cronica.STATUS.IsSneaking = 1..}] add TAG.cronica.STATUS.IsSneaked

  # 能力呼び出し：実行時/実行中
    # function cronica:player/status/detection/boot/is_sneaking
# =================================================================================================
# ver 0.10.3
