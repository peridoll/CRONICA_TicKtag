# =================================================================================================

##【 起動処理 】

  ## アイテム発動確認

    # 能力機動
      execute \
          if entity @s[tag = TAG.cronica.GAMING] \
          if score @s SCORE.cronica.STATUS.ItemUsing matches 1 \
        run \
          function cronica:player/character/ikaros/select/flying_feather/library/run
# =================================================================================================
# ver 0.10.3
