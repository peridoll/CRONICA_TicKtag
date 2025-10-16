# =================================================================================================

# 使用終了検知
execute as @s[tag=TAG.cronica.STATUS.IsSprinted,scores={SCORE.cronica.STATUS.IsSprinting=1..}] run function cronica:player/status/detection/predicate/is_sprinting/finish
tag @s[scores={SCORE.cronica.STATUS.IsSprinting=1..}] add TAG.cronica.STATUS.IsSprinted

# 能力呼び出し：実行時/実行中
function cronica:player/status/detection/boot/is_sprinting
# =================================================================================================
