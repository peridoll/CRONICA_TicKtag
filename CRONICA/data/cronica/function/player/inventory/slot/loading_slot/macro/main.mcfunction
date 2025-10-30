# =================================================================================================

##【 IMPULSE 】

  ## アイテム取得

    # 通常インベントリ
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica:temp GetInventory{Slot: "36"} run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica:temp GetInventory{Slot: "36"} run loot replace entity @s container.$(Slot) loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.11.0
