# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 飛行終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsFlew] run function cronica:player/detection/predicate/is_flying/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsFlying = 0..}] add TAG.cronica.STATUS.IsFlew
# =================================================================================================
# ver 0.13.0
