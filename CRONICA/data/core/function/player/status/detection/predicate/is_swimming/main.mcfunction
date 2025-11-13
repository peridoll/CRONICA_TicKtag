# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 泳ぎ終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsSwam] run function core:player/status/detection/predicate/is_swimming/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsSwimming = 0..}] add TAG.cronica.STATUS.IsSwam

  ## 終了時管理

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsSwimming = 0..}] run schedule function core:player/status/detection/predicate/is_swimming/main 1t
# =================================================================================================
# ver 0.12.0
