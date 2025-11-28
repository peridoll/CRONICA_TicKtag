# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## アイテム取得

    # オフハンド
      data modify storage cronica:temp CharacterGet.Offhand.ItemID set value ""
      data modify storage cronica:temp CharacterGet.Offhand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if data storage cronica:temp CharacterGet.Offhand{ItemID: ""} run scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1
      $execute if data storage cronica:temp CharacterGet.Offhand{ItemID: ""} run loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
      data remove storage cronica:temp CharacterGet.Offhand.ItemID
# =================================================================================================
# ver 0.13.0
