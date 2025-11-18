# =================================================================================================

##【 IMPULSE 】

  ## 行動検知

    # 使用中検知
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. \
        run \
          function core:player/character/charge/macro/run with storage cronica:config apollon_bow.CustomData.evolution
# =================================================================================================
# ver 0.12.0
