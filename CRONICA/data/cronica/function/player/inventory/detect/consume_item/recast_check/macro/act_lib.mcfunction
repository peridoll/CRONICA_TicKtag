# =================================================================================================

##【 ACT-LIB 】
# 分岐接続用関数

  ## アイテム消費時処理

    # 共通処理
      $data modify storage cronica:temp RecastCheckActivation set from entity @s $(HandTypeA).components.minecraft:custom_data
      $data modify storage cronica:temp RecastCheckActivation.HandTypeA set value "$(HandTypeA)"
      $data modify storage cronica:temp RecastCheckActivation.HandTypeB set value "$(HandTypeB)"
      function cronica:player/inventory/detect/consume_item/recast_check/macro/check with storage cronica:temp RecastCheckActivation
      data remove storage cronica:temp RecastCheckActivation
# =================================================================================================
# ver 0.14.1
