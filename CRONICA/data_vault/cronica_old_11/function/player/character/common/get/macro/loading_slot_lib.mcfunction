# =================================================================================================

##【 IMPULSE 】

  ## アイテム取得

    # 通常インベントリ
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica:temp CommonGet{Slot: 36} run \
        scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).Count 1
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica:temp CommonGet{Slot: 36} run \
        loot replace entity @s container.$(Slot) loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.11.0
