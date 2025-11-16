# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # アイテム置き換え
      # $function core:player/inventory/full_execute/func/clear_item/macro/run { TargetType : "ItemID", TargetID : "$(ItemID)" }
      $scoreboard players reset @s SCORE.cronica.MODE.$(ItemID)
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get

  ## 装飾

    # サウンド再生
      playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

  ## データ管理

    # リセット
      function core:player/character/activate/macro/ct/reset with storage cronica:temp CoolTimeMain
# =================================================================================================
# ver 0.12.0
