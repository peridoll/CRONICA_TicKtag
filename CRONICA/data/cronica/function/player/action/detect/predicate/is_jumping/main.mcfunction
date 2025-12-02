# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 使用終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsJumped] run function cronica:player/action/detect/predicate/is_jumping/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsJumping = 0..}] add TAG.cronica.STATUS.IsJumped
# =================================================================================================
# ver 0.13.0
