# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 使用終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsSneaked] run function cronica:player/detection/predicate/is_sneaking/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsSneaking = 0..}] add TAG.cronica.STATUS.IsSneaked
# =================================================================================================
# ver 0.13.0
