# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ関連管理

    # データ初期化
      $data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set value ""

      $data modify storage cronica:temp FullExecute_$(Function).Count \
        set value ""

    # 各種コンポーネントのデータを取得
      $data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterID
      $data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterType
      $data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemID

      $data modify storage cronica:temp FullExecute_$(Function).Count \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].count
# =================================================================================================
# ver 0.13.0
