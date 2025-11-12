# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 検知用スコアリセット
    scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Shoot

  ## 残段数管理

    # 残数なし
      function cronica:player/inventory/slot/macro/has_check {ItemID: "apollon_arrow"}
      execute if entity @s[tag =! TAG.cronica.INVENTORY.apollon_arrow.Has] run \
        function cronica:player/character/ikaros/unique/apollon_bow/library/shoot/ammo_zero
      tag @s remove TAG.cronica.INVENTORY.apollon_arrow.Has
# =================================================================================================
# ver 0.11.0
