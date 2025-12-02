# =================================================================================================

##【 DETECTION 】
# 行動検知

  ## 行動検知

    # 使用中検知
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. \
        run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/run
# =================================================================================================
# ver 0.13.0
