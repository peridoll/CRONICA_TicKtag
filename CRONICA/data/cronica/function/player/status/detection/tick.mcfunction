# =================================================================================================

## CRONICA - player/status/detection/tick.mcfunction
# 行動検知を行う関数

  # スニーク中検知：Predicate
    execute as @a if predicate cronica:is_sneaking run function cronica:player/status/detection/predicate/is_sneaking/run
    execute as @a[scores = {SCORE.cronica.STATUS.IsSneaking = 0..}] run function cronica:player/status/detection/predicate/is_sneaking/main

  # ダッシュ中検知：Predicate
    execute as @a if predicate cronica:is_sprinting run function cronica:player/status/detection/predicate/is_sprinting/run
    execute as @a[scores = {SCORE.cronica.STATUS.IsSprinting = 0..}] run function cronica:player/status/detection/predicate/is_sprinting/main

  # アイテム使用検知：Advancement
    execute as @a[scores = {SCORE.cronica.STATUS.ItemUsing = 0..}] run function cronica:player/status/detection/advancements/using_item/main
# =================================================================================================
# ver 0.10.3
