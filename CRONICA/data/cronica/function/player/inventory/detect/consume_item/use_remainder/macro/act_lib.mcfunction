# =================================================================================================

##【 ACT-LIB 】
# 分岐接続用関数

  ## アイテム消費時処理

    # 共通処理
      $data modify storage cronica:temp UseRemainderActivation set from entity @s $(HandTypeA).components.minecraft:custom_data
      $data modify storage cronica:temp UseRemainderActivation.HandTypeA set value "$(HandTypeA)"
      $data modify storage cronica:temp UseRemainderActivation.HandTypeB set value "$(HandTypeB)"
      function cronica:player/inventory/detect/consume_item/use_remainder/macro/run with storage cronica:temp UseRemainderActivation
      data remove storage cronica:temp UseRemainderActivation
# =================================================================================================
# ver 0.14.1
