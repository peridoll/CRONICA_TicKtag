# =================================================================================================

##【 IMPULSE 】

  ## データ関連管理

    # データ初期化
      $data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set value ""

      # $data modify storage cronica:temp FullExecute_$(Function).ItemMode \
        set value ""
      # $data modify storage cronica:temp FullExecute_$(Function).ItemStatus \
        set value ""

      # $data modify storage cronica:temp FullExecute_$(Function).ID \
        set value ""
      # $data modify storage cronica:temp FullExecute_$(Function).Count \
        set value ""

      # $data modify storage cronica:temp FullExecute_$(Function).Countable \
        set value ""
      # $data modify storage cronica:temp FullExecute_$(Function).CustomModelData \
        set value ""

    # 各種コンポーネントのデータを取得
      $data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterID
      $data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterType
      $data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemID

      # $data modify storage cronica:temp FullExecute_$(Function).ItemMode \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemMode
      # $data modify storage cronica:temp FullExecute_$(Function).ItemStatus \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemStatus

      # $data modify storage cronica:temp FullExecute_$(Function).ID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].id
      # $data modify storage cronica:temp FullExecute_$(Function).Count \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].count

      # $data modify storage cronica:temp FullExecute_$(Function).Countable \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".Countable
      # $data modify storage cronica:temp FullExecute_$(Function).CustomModelData \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].tag.CustomModelData
# =================================================================================================
# ver 0.12.0
