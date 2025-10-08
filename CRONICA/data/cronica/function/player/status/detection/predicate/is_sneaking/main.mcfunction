# =================================================================================================

# 使用終了検知
execute as @s[tag=TAG.cronica.DETECT.IsSneaked,scores={SCORE.cronica.DETECT.IsSneaking=1..}] run function cronica:player/status/detection/predicate/is_sneaking/finish
tag @s[scores={SCORE.cronica.DETECT.IsSneaking=1..}] add TAG.cronica.DETECT.IsSneaked

# 能力呼び出し：実行時/実行中
function cronica:player/status/detection/boot/is_sneaking
# =================================================================================================
