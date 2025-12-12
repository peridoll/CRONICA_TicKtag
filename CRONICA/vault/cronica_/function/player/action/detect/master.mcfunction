# =================================================================================================

##【 TICK 】
# 毎ティック常時実行される

  ## 行動検知管理

    # スニーク中検知：PREDICATE
      execute as @a[tag = TAG.cronica.GAMING] if predicate cronica:is_sneaking run function cronica:player/action/detect/predicate/is_sneaking/run
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsSneaking = 0..}] run function cronica:player/action/detect/predicate/is_sneaking/main

    # ダッシュ中検知：PREDICATE
      execute as @a[tag = TAG.cronica.GAMING] if predicate cronica:is_sprinting run function cronica:player/action/detect/predicate/is_sprinting/run
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsSprinting = 0..}] run function cronica:player/action/detect/predicate/is_sprinting/main

    # 泳ぎ中検知：PREDICATE
      execute as @a[tag = TAG.cronica.GAMING] if predicate cronica:is_swimming run function cronica:player/action/detect/predicate/is_swimming/run
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsSwimming = 0..}] run function cronica:player/action/detect/predicate/is_swimming/main

    # 飛行中検知：PREDICATE
      execute as @a[tag = TAG.cronica.GAMING] if predicate cronica:is_flying run function cronica:player/action/detect/predicate/is_flying/run
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsFlying = 0..}] run function cronica:player/action/detect/predicate/is_flying/main

    # 跳躍中検知：PREDICATE
      execute as @a[tag = TAG.cronica.GAMING] unless predicate cronica:is_on_ground run function cronica:player/action/detect/predicate/is_jumping/run
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsJumping = 0..}] run function cronica:player/action/detect/predicate/is_jumping/main

    # アイテム使用検知：ADVANCEMENT
      execute if entity @a[scores = {SCORE.cronica.STATUS.ItemUsing = 0..}] run function cronica:player/action/detect/advancement/inventory/using_item/main
# =================================================================================================
# ver 0.13.0
