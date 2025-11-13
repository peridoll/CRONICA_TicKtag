# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常実行、マクロ、手動実行不可

  ## アイテム取得

    # 通常インベントリ
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica:temp $(StorageName){Slot: 36} run \
        scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1
      $execute if entity @s[nbt =! {Inventory: [{Slot: $(Slot)b}]}] unless data storage cronica:temp $(StorageName){Slot: 36} run \
        loot replace entity @s container.$(Slot) loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.12.0
