# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 飛行終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsFlew] run function cronica:player/status/detection/predicate/is_flying/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsFlying = 0..}] add TAG.cronica.STATUS.IsFlew

  ## 終了時管理

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsFlying = 0..}] run schedule function cronica:player/status/detection/predicate/is_flying/main 1t
# =================================================================================================
# ver 0.11.0
