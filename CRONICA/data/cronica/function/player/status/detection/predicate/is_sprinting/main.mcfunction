# =================================================================================================

##【 REPEAT 】

  ## 行動検知管理

    # 使用終了検知
      execute as @a[tag = TAG.cronica.STATUS.IsSprinted] run function cronica:player/status/detection/predicate/is_sprinting/finish
      tag @a[scores = {SCORE.cronica.STATUS.IsSprinting = 0..}] add TAG.cronica.STATUS.IsSprinted

  ## 終了時管理

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.STATUS.IsSprinting = 0..}] run schedule function cronica:player/status/detection/predicate/is_sprinting/main 1t
# =================================================================================================
# ver 0.11.0
