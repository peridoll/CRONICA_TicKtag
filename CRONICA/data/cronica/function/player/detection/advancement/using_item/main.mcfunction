# =================================================================================================

##【 REPEAT 】

  ## アイテム使用検知管理

    # 使用終了検知
      execute if entity @s[tag = TAG.cronica.STATUS.ItemUsed] run function cronica:player/status/detection/advancements/using_item/finish
      tag @s[scores = {SCORE.cronica.STATUS.ItemUsing = 0..}] add TAG.cronica.STATUS.ItemUsed
# =================================================================================================
# ver 0.12.0
