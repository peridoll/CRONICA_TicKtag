# =================================================================================================

##【 IMPULSE 】

  ## WEAPON

    # Apollon Bow
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1 \
        run \
          function cronica:player/character/ikaros/unique/begin_twilight/library/run
# =================================================================================================
# ver 0.10.4
