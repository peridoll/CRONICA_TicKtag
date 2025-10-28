# =================================================================================================

##【 IMPULSE 】

  ## 行動検知

    # 使用中検知
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. \
        run \
          function cronica:player/status/common_lib/charge/macro/run with storage cronica:config ApollonBowCharge
# =================================================================================================
# ver 0.10.4
