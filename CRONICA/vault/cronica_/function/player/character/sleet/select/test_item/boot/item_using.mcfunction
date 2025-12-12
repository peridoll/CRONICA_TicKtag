# =================================================================================================

##【 IMPULSE 】

  ## 行動検知

    # 使用中検知
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if entity @s[tag = TAG.cronica.preview] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1 \
        run \
          function cronica:player/character/sleet/select/test_item/run
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1 \
        run \
          function cronica:player/character/sleet/select/test_item/library/preview_start
# =================================================================================================
# ver 0.12.0
