# =================================================================================================

##【 IMPULSE 】

  ## 灼星ノ閃光

    # 発射
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/spectrum/run

  ## 残段数管理

    # 残数なし
      function cronica:player/inventory/has_check/macro/has_check {TargetType: "ItemID", TargetID: "apollon_arrow"}
      execute if entity @s[tag =! TAG.cronica.INVENTORY.apollon_arrow.Has] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/ammo_zero
      tag @s remove TAG.cronica.INVENTORY.apollon_arrow.Has
# =================================================================================================
# ver 0.13.0
