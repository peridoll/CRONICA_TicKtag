# =================================================================================================

# 使用終了検知
execute as @s[tag=TAG.cronica_dev.STATUS.IsSprinted,scores={SCORE.cronica_dev.STATUS.IsSprinting=1..}] run function cronica_dev:player/status/detection/predicate/is_sprinting/finish
tag @s[scores={SCORE.cronica_dev.STATUS.IsSprinting=1..}] add TAG.cronica_dev.STATUS.IsSprinted

# 能力呼び出し：実行時/実行中
# function cronica_dev:player/status/detection/boot/is_sprinting
# =================================================================================================
