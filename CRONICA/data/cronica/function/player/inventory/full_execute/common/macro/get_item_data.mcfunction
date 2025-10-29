# =================================================================================================

##【 IMPULSE 】

  ## データ関連管理

    # 各種コンポーネントのデータを取得
      $data modify storage cronica:temp FullExecute.MasterID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterID
      $data modify storage cronica:temp FullExecute.MasterType \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterType
      $data modify storage cronica:temp FullExecute.ItemID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemID
# =================================================================================================
# ver 0.11.0
