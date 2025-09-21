# ItemCategory取得
data modify storage cronica:context ItemCategory.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemCategory
data modify storage cronica:context ItemCategory.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemCategory
data modify storage cronica:context ItemCategory.Value set from storage cronica:context ItemCategory.Offhand
data modify storage cronica:context ItemCategory.Value set from storage cronica:context ItemCategory.Mainhand

# ItemID取得
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
data modify storage cronica:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
data modify storage cronica:context ItemID.Value set from storage cronica:context ItemID.Offhand
data modify storage cronica:context ItemID.Value set from storage cronica:context ItemID.Mainhand

# ItemStatus取得
data modify storage cronica:context ItemStatus.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
data modify storage cronica:context ItemStatus.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
data modify storage cronica:context ItemStatus.Value set from storage cronica:context ItemStatus.Offhand
data modify storage cronica:context ItemStatus.Value set from storage cronica:context ItemStatus.Mainhand

# 使用終了検知
execute if score @s[scores={SCORE.cronica.STATUS.Sneaking=1..}] SCORE.cronica.STATUS.Sneaked matches 0 run function cronica:player/status/check/boot/sneaking/finish
scoreboard players set @s SCORE.cronica.STATUS.Sneaked 0
#//////////////////////////////////////////////////////////////////////////////////////////////////

# Ikaros
execute as @s[tag=TAG.cronica.SNEAKING] if data storage cronica:context ItemID{Value:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload_check

#//////////////////////////////////////////////////////////////////////////////////////////////////
# データリセット
data remove storage cronica:context ItemCategory
data remove storage cronica:context ItemID
data remove storage cronica:context ItemStatus