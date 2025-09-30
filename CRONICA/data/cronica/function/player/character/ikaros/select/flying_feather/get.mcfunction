# =================================================================================================

# アイテム入手
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "flying_feather"}}}]}] run tag @s add TAG.cronica.SKILL.FlyingFeather.Has
execute if data storage cronica:context ItemID.Offhand{Value: "FlyingFeather"} run tag @s add TAG.cronica.SKILL.FlyingFeather.Has
execute as @s[tag=!TAG.cronica.SKILL.FlyingFeather.Has] run loot give @s loot cronica:character/ikaros/select/flying_feather
tag @s remove TAG.cronica.SKILL.FlyingFeather.Has
data remove storage cronica:context ItemID
# =================================================================================================
