# =================================================================================================

##【 IMPULSE 】

  ## 行動検知

    # 使用中検知
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1 \
        run \
          function cronica:player/character/ikaros/select/blazing_shield/library/run
# =================================================================================================
# ver 0.11.0
