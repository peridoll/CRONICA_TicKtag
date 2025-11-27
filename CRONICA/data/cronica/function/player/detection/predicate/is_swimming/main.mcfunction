# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 泳ぎ終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsSwam] run function cronica:player/status/detection/predicate/is_swimming/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsSwimming = 0..}] add TAG.cronica.STATUS.IsSwam
# =================================================================================================
# ver 0.12.0
