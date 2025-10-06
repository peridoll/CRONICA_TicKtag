# =================================================================================================

# Reset data
$data remove storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate
$data remove storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand
$data remove storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand
$data remove storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Slot

# Set UUID
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.UUID set value "$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)"
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.UUID set value "$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)"
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.UUID set value "$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)"
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Slot.UUID set value "$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)"

# Offhand Item
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.MasterID set from entity @s equipment.offhand.components."minecraft:custom_data".MasterID
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.MasterType set from entity @s equipment.offhand.components."minecraft:custom_data".MasterType
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemCategory set from entity @s equipment.offhand.components."minecraft:custom_data".ItemCategory
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemMode set from entity @s equipment.offhand.components."minecraft:custom_data".ItemMode
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemStatus set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.MasterID set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.MasterID
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.MasterType set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.MasterType
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemCategory set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemCategory
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemID set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemID
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemMode set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemMode
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemStatus set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand.ItemStatus
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Offhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.Hand set value "Offhand"

# Mainhand Item
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.MasterID set from entity @s SelectedItem.components."minecraft:custom_data".MasterID
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.MasterType set from entity @s SelectedItem.components."minecraft:custom_data".MasterType
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemCategory set from entity @s SelectedItem.components."minecraft:custom_data".ItemCategory
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemMode set from entity @s SelectedItem.components."minecraft:custom_data".ItemMode
$data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemStatus set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.MasterID set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.MasterID
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.MasterType set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.MasterType
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemCategory set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemCategory
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemID set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemID
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemMode set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemMode
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.ItemStatus set from storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand.ItemStatus
$execute if data storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Mainhand{ItemStatus:"ready"} run data modify storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/data Activate.Hand set value "Mainhand"

# Save Slot



# =================================================================================================