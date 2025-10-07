# =================================================================================================

# 使用終了検知
execute as @s[tag=TAG.cronica.DETECT.ItemUsed,scores={SCORE.cronica.DETECT.ItemUsing=1..}] run function cronica:player/status/detection/advancements/using_item/finish
tag @s[scores={SCORE.cronica.DETECT.ItemUsing=1..}] add TAG.cronica.DETECT.ItemUsed

# 能力呼び出し：実行時/実行中
function cronica:system/common/storage/use_data_func {func:"player/status/detection/boot/item_using"}
# =================================================================================================
