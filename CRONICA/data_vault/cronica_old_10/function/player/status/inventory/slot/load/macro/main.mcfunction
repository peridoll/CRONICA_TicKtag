# =================================================================================================

##【 IMPULSE 】

  ## アイテム取得

    # 通常インベントリ
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica_dev:temp GetInventory{Slot: "36"} run tag @s add TAG.cronica_dev.CHARACTER.$(ItemID).Has
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica_dev:temp GetInventory{Slot: "36"} run loot replace entity @s container.$(Slot) loot cronica_dev:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.10.3
