# =================================================================================================

# Reset data
data remove storage cronica:player/inventory/data Value
data remove storage cronica:player/inventory/data Mainhand
data remove storage cronica:player/inventory/data Offhand

# Offhand
data modify storage cronica:player/inventory/data Offhand.MasterName set from entity @s equipment.offhand.components."minecraft:custom_data".MasterName
data modify storage cronica:player/inventory/data Offhand.MasterType set from entity @s equipment.offhand.components."minecraft:custom_data".MasterType
data modify storage cronica:player/inventory/data Offhand.ItemCategory set from entity @s equipment.offhand.components."minecraft:custom_data".ItemCategory
data modify storage cronica:player/inventory/data Offhand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
data modify storage cronica:player/inventory/data Offhand.ItemMode set from entity @s equipment.offhand.components."minecraft:custom_data".ItemMode
data modify storage cronica:player/inventory/data Offhand.ItemStatus set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.MasterName set from storage cronica:player/inventory/data Offhand.MasterName
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.MasterType set from storage cronica:player/inventory/data Offhand.MasterType
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemCategory set from storage cronica:player/inventory/data Offhand.ItemCategory
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemID set from storage cronica:player/inventory/data Offhand.ItemID
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemMode set from storage cronica:player/inventory/data Offhand.ItemMode
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemStatus set from storage cronica:player/inventory/data Offhand.ItemStatus
execute if data storage cronica:player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.Hand set value "Offhand"

# Mainhand
data modify storage cronica:player/inventory/data Mainhand.MasterName set from entity @s SelectedItem.components."minecraft:custom_data".MasterName
data modify storage cronica:player/inventory/data Mainhand.MasterType set from entity @s SelectedItem.components."minecraft:custom_data".MasterType
data modify storage cronica:player/inventory/data Mainhand.ItemCategory set from entity @s SelectedItem.components."minecraft:custom_data".ItemCategory
data modify storage cronica:player/inventory/data Mainhand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
data modify storage cronica:player/inventory/data Mainhand.ItemMode set from entity @s SelectedItem.components."minecraft:custom_data".ItemMode
data modify storage cronica:player/inventory/data Mainhand.ItemStatus set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.MasterName set from storage cronica:player/inventory/data Mainhand.MasterName
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.MasterType set from storage cronica:player/inventory/data Mainhand.MasterType
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemCategory set from storage cronica:player/inventory/data Mainhand.ItemCategory
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemID set from storage cronica:player/inventory/data Mainhand.ItemID
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemMode set from storage cronica:player/inventory/data Mainhand.ItemMode
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.ItemStatus set from storage cronica:player/inventory/data Mainhand.ItemStatus
execute if data storage cronica:player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:player/inventory/data Value.Hand set value "Mainhand"
# =================================================================================================
