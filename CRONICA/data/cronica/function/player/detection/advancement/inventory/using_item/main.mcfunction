# =================================================================================================

##【 DETECTION LIBRARY 】
# 行動検知, 鎖状実行

  ## アイテム使用検知管理

    # 使用終了検知
      execute as @a[tag = TAG.cronica.STATUS.ItemUsed] run function cronica:player/detection/advancement/inventory/using_item/finish
      tag @a[scores = {SCORE.cronica.STATUS.ItemUsing = 0..}] add TAG.cronica.STATUS.ItemUsed
# =================================================================================================
# ver 0.13.0
