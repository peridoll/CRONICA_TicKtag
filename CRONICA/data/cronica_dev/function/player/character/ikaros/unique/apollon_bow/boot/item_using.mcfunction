# =================================================================================================

##【 IMPULSE 】

  ## 行動検知

    # 使用中検知
      execute \
          if entity @s[tag = TAG.cronica_dev.GAMING] \
          if score @s SCORE.cronica_dev.STATUS.ItemUsing matches 1.. \
        run \
          function cronica_dev:player/status/common_lib/charge/macro/run with storage cronica_dev:config ApollonBowCharge
# =================================================================================================
# ver 0.10.4
