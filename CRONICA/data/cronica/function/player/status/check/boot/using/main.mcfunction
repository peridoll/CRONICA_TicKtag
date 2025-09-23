## アイテムデータ取得

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

## 使用検知

# 使用終了検知
execute if score @s[scores={SCORE.cronica.STATUS.ItemUsing=1..}] SCORE.cronica.STATUS.ItemUsed matches 0 run function cronica:player/status/check/boot/using/finish
scoreboard players set @s SCORE.cronica.STATUS.ItemUsed 0
# 使用中処理
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"MainWeapon"} run function cronica:player/status/check/boot/using/category/main_weapon
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"SubWeapon"} run function cronica:player/status/check/boot/using/category/sub_weapon
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"Ammo"} run function cronica:player/status/check/boot/using/category/ammo
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"UniqueSkill"} run function cronica:player/status/check/boot/using/category/unique_skill
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"ExtraSkill"} run function cronica:player/status/check/boot/using/category/extra_skill
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"SelectSkill"} run function cronica:player/status/check/boot/using/category/select_skill
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1.. if data storage cronica:context ItemCategory{Value:"OtherItem"} run function cronica:player/status/check/boot/using/category/other_item

## 撤去

# データリセット
data remove storage cronica:context ItemCategory
data remove storage cronica:context ItemID
data remove storage cronica:context ItemStatus