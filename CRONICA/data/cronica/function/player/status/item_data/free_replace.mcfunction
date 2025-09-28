# =================================================================================================
#【 各種置き換え 】
# アイテムの状態に応じてモデルを置き換える

# オフハンド
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
$execute if data storage cronica:context ItemID{Offhand:"$(ItemID)"} run item modify entity @s weapon.offhand cronica:$(Address)/$(Model)
data remove storage cronica:context ItemID

# ホットバー
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:0b}]}] run item modify entity @s hotbar.0 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:1b}]}] run item modify entity @s hotbar.1 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:2b}]}] run item modify entity @s hotbar.2 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:3b}]}] run item modify entity @s hotbar.3 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:4b}]}] run item modify entity @s hotbar.4 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:5b}]}] run item modify entity @s hotbar.5 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:6b}]}] run item modify entity @s hotbar.6 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:7b}]}] run item modify entity @s hotbar.7 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:8b}]}] run item modify entity @s hotbar.8 cronica:$(Address)/$(Model)

# インベントリ
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:9b}]}] run item modify entity @s inventory.0 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:10b}]}] run item modify entity @s inventory.1 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:11b}]}] run item modify entity @s inventory.2 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:12b}]}] run item modify entity @s inventory.3 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:13b}]}] run item modify entity @s inventory.4 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:14b}]}] run item modify entity @s inventory.5 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:15b}]}] run item modify entity @s inventory.6 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:16b}]}] run item modify entity @s inventory.7 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:17b}]}] run item modify entity @s inventory.8 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:18b}]}] run item modify entity @s inventory.9 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:19b}]}] run item modify entity @s inventory.10 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:20b}]}] run item modify entity @s inventory.11 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:21b}]}] run item modify entity @s inventory.12 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:22b}]}] run item modify entity @s inventory.13 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:23b}]}] run item modify entity @s inventory.14 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:24b}]}] run item modify entity @s inventory.15 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:25b}]}] run item modify entity @s inventory.16 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:26b}]}] run item modify entity @s inventory.17 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:27b}]}] run item modify entity @s inventory.18 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:28b}]}] run item modify entity @s inventory.19 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:29b}]}] run item modify entity @s inventory.20 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:30b}]}] run item modify entity @s inventory.21 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:31b}]}] run item modify entity @s inventory.22 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:32b}]}] run item modify entity @s inventory.23 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:33b}]}] run item modify entity @s inventory.24 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:34b}]}] run item modify entity @s inventory.25 cronica:$(Address)/$(Model)
$execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}},Slot:35b}]}] run item modify entity @s inventory.26 cronica:$(Address)/$(Model)
# =================================================================================================
