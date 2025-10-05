# =================================================================================================

# アイテム入手
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "judgment_stone"}}}]}] run tag @s add TAG.cronica.SKILL.judgment_stone.Has
execute if data storage cronica:context ItemID.Offhand{Value: "judgment_stone"} run tag @s add TAG.cronica.SKILL.judgment_stone.Has
execute as @s[tag=!TAG.cronica.SKILL.judgment_stone.Has] run loot give @s loot cronica:character/ikaros/select/judgment_stone
tag @s remove TAG.cronica.SKILL.judgment_stone.Has
data remove storage cronica:context ItemID
# =================================================================================================
