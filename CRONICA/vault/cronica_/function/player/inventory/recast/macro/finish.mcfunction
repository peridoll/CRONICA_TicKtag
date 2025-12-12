# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # アイテム置き換え
      $scoreboard players reset @s SCORE.cronica.MODE.$(ItemID)
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get

  ## 装飾

    # サウンド再生
      playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

  ## データ管理

    # リセット
      function cronica:player/inventory/recast/macro/reset with storage cronica:temp RecastMain
# =================================================================================================
# ver 0.13.0
