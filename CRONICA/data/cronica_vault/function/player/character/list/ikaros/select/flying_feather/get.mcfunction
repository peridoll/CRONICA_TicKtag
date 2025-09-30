# アイテム取得
# execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "FlyingFeather"}}}]}] run loot give @s loot cronica:character/ikaros/select/flying_feather

# =================================================================================================

#【 アイテム入手 】
# 対象のアイテムを持っていない場合に基本形態を入手する
#[Load]

#[Give]
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "flying_feather"}}}]}] run tag @s add TAG.cronica.SKILL.FlyingFeather.Has
execute if data storage cronica:context ItemID.Offhand{Value: "FlyingFeather"} run tag @s add TAG.cronica.SKILL.FlyingFeather.Has
execute as @s[tag=!TAG.cronica.SKILL.FlyingFeather.Has] run loot give @s loot cronica:character/ikaros/unique/apollon_bow
tag @s remove TAG.cronica.SKILL.FlyingFeather.Has
data remove storage cronica:context ItemID
# =================================================================================================
