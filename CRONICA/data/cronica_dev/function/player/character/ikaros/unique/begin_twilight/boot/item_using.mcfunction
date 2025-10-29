# =================================================================================================

##【 IMPULSE 】

  ## WEAPON

    # Apollon Bow
      execute \
          if entity @s[tag = TAG.cronica_dev.GAMING] \
          if score @s SCORE.cronica_dev.STATUS.ItemUsing matches 1 \
        run \
          function cronica_dev:player/character/ikaros/unique/begin_twilight/library/run
# =================================================================================================
# ver 0.10.4
