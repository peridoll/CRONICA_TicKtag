# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動禁止解除
      effect clear @s minecraft:slowness

  ## 状態管理

    # タグ管理
      $tag @s remove TAG.cronica.WEAPON.$(ItemID).Reloaded
      $tag @s remove TAG.cronica.WEAPON.$(ItemID).Reloading

    # スコア管理
      $function core:player/character/charge/reload/macro/leave with storage cronica:config $(ItemID).CustomData.Reload
# =================================================================================================
# ver 0.12.0
