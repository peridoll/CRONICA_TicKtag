# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # スニーク中検知：PREDICATE
      execute as @a if predicate core:is_sneaking run function core:player/status/detection/predicate/is_sneaking/run

    # ダッシュ中検知：PREDICATE
      execute as @a if predicate core:is_sprinting run function core:player/status/detection/predicate/is_sprinting/run

    # 飛行中検知：PREDICATE
      execute as @a if predicate core:is_flying run function core:player/status/detection/predicate/is_flying/run

    # 泳ぎ中検知：PREDICATE
      execute as @a if predicate core:is_swimming run function core:player/status/detection/predicate/is_swimming/run

    # アイテム使用検知：ADVANCEMENT
      execute as @a[scores = {SCORE.cronica.STATUS.ItemUsing = 0..}] run function core:player/status/detection/advancements/using_item/main
# =================================================================================================
# ver 0.12.0
