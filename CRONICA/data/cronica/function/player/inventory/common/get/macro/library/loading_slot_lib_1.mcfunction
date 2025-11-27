# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## アイテム取得

    # 通常インベントリ
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] run scronicaboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] run loot replace entity @s container.$(Slot) loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.13.0
