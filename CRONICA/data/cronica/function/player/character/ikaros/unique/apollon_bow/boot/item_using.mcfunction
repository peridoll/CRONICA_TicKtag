# =================================================================================================

##【 IMPULSE 】

  ## 行動検知

    # リロード検知
      # [ データ準備 ]
      # function cronica:player/character/ikaros/unique/apollon_bow/library/charge/storage_setup

    # 使用中検知
      # execute \
      #     if entity @s[tag = TAG.cronica.GAMING] \
      #     if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. \
      #   run \
      #     function cronica:player/status/common_lib/charge/run with storage cronica:temp Charge
# =================================================================================================
# ver 0.10.4
