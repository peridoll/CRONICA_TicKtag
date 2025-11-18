# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 使用終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsSprinted] run function core:player/status/detection/predicate/is_sprinting/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsSprinting = 0..}] add TAG.cronica.STATUS.IsSprinted
# =================================================================================================
# ver 0.12.0
