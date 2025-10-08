# =================================================================================================

# スニーク中検知
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:is_sneaking run function cronica:player/status/detection/predicate/is_sneaking/run
execute as @a[scores={SCORE.cronica.DETECT.IsSneaking=1..}] run function cronica:player/status/detection/predicate/is_sneaking/main

# ダッシュ中検知
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:is_sprinting run function cronica:player/status/detection/predicate/is_sprinting/run
execute as @a[scores={SCORE.cronica.DETECT.IsSprinting=1..}] run function cronica:player/status/detection/predicate/is_sprinting/main

# アイテム使用検知
execute as @a[scores={SCORE.cronica.DETECT.ItemUsing=2..}] run function cronica:player/status/detection/advancements/using_item/main
execute as @a[scores={SCORE.cronica.DETECT.ItemUsing=1}] run scoreboard players set @s SCORE.cronica.DETECT.ItemUsing 2
# =================================================================================================
