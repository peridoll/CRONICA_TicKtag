# =================================================================================================

# 使用終了検知
execute as @s[tag=TAG.cronica.DETECT.ItemUsed,scores={SCORE.cronica.DETECT.ItemUsing=1..}] run function cronica:player/status/detection/advancements/using_item/finish
tag @s add TAG.cronica.DETECT.ItemUsed

# 発動呼び出し
function cronica:player/status/detection/advancements/using_item/library/main_act
# =================================================================================================
