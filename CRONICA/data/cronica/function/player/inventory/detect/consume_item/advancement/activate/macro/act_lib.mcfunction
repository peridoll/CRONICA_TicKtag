# =================================================================================================

##【 ACT-LIB 】
# 分岐接続用関数

  ## アイテム消費時処理

    # 共通処理
      $data modify storage cronica:temp ConsumeItemActivation set from entity @s $(HandTypeA).components.minecraft:custom_data
      $data modify storage cronica:temp ConsumeItemActivation.HandTypeA set value "$(HandTypeA)"
      $data modify storage cronica:temp ConsumeItemActivation.HandTypeB set value "$(HandTypeB)"
      function cronica:player/inventory/detect/consume_item/advancement/activate/macro/run with storage cronica:temp ConsumeItemActivation
      data remove storage cronica:temp ConsumeItemActivation
# =================================================================================================
# ver 0.14.1
