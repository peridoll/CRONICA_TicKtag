
# ItemCategory取得
data modify storage cronica:context ItemCategory.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemCategory
data modify storage cronica:context ItemCategory.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemCategory
# ItemID取得
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
data modify storage cronica:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
# ItemMode取得
data modify storage cronica:context ItemMode.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemMode
data modify storage cronica:context ItemMode.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemMode
# ItemStatus
data modify storage cronica:context ItemStatus.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
data modify storage cronica:context ItemStatus.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus

# data remove storage cronica:context ItemCategory
# data remove storage cronica:context ItemID
# data remove storage cronica:context ItemStatus
# data remove storage cronica:context ItemMode




