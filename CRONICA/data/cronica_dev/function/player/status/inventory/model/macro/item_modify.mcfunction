# =================================================================================================

##【 IMPULSE 】

  ## モデル書き換え

    # オフハンド
      data modify storage cronica_dev:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if data storage cronica_dev:context ItemID{Offhand:"$(ItemID)"} run item modify entity @s weapon.offhand cronica_dev:$(Model)
      data remove storage cronica_dev:context ItemID

    # インベントリ
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:0b }]}] run item modify entity @s container.0 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:1b }]}] run item modify entity @s container.1 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:2b }]}] run item modify entity @s container.2 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:3b }]}] run item modify entity @s container.3 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:4b }]}] run item modify entity @s container.4 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:5b }]}] run item modify entity @s container.5 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:6b }]}] run item modify entity @s container.6 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:7b }]}] run item modify entity @s container.7 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:8b }]}] run item modify entity @s container.8 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:9b }]}] run item modify entity @s container.9 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:10b}]}] run item modify entity @s container.10 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:11b}]}] run item modify entity @s container.11 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:12b}]}] run item modify entity @s container.12 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:13b}]}] run item modify entity @s container.13 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:14b}]}] run item modify entity @s container.14 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:15b}]}] run item modify entity @s container.15 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:16b}]}] run item modify entity @s container.16 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:17b}]}] run item modify entity @s container.17 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:18b}]}] run item modify entity @s container.18 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:19b}]}] run item modify entity @s container.19 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:20b}]}] run item modify entity @s container.20 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:21b}]}] run item modify entity @s container.21 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:22b}]}] run item modify entity @s container.22 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:23b}]}] run item modify entity @s container.23 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:24b}]}] run item modify entity @s container.24 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:25b}]}] run item modify entity @s container.25 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:26b}]}] run item modify entity @s container.26 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:27b}]}] run item modify entity @s container.27 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:28b}]}] run item modify entity @s container.28 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:29b}]}] run item modify entity @s container.29 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:30b}]}] run item modify entity @s container.30 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:31b}]}] run item modify entity @s container.31 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:32b}]}] run item modify entity @s container.32 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:33b}]}] run item modify entity @s container.33 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:34b}]}] run item modify entity @s container.34 cronica_dev:$(Model)
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}, Slot:35b}]}] run item modify entity @s container.35 cronica_dev:$(Model)
# =================================================================================================
# ver 0.10.4
