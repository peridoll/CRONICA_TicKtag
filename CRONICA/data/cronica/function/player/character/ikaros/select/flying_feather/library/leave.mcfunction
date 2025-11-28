# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s minecraft:levitation
      effect clear @s minecraft:slow_falling

  ## スコア管理

    # アイテムモード
      scoreboard players reset @s SCORE.cronica.MODE.flying_feather
      function cronica:player/character/ikaros/select/flying_feather/get

    # アクティベート
      function cronica:player/character/ikaros/select/flying_feather/library/activate/reset

    # リキャスト
      function cronica:player/inventory/recast/macro/reset {ItemID : "flying_feather" }
# =================================================================================================
# ver 0.13.0
