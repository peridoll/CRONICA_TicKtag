# =================================================================================================

##【 IMPULSE 】

  ## 残段数管理

    # 残数なし
      function core:player/inventory/has_check/macro/has_check {ItemID: "apollon_arrow"}
      execute if entity @s[tag =! TAG.cronica.INVENTORY.apollon_arrow.Has] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/ammo_zero
      tag @s remove TAG.cronica.INVENTORY.apollon_arrow.Has
# =================================================================================================
# ver 0.12.0
