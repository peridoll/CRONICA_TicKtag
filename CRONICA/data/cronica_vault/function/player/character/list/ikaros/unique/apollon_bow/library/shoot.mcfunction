# =================================================================================================

##【 残段数管理 】
# 残段数が特定の数になった場合、所持している弾薬の見た目を変える

# 残数がなし
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run scoreboard objectives add SCORE.cronica.WEAPON.ApollonArrow.ItemMode dummy
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run scoreboard players set @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode 0

# 残数が一発
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}},count:1}]}] run scoreboard objectives add SCORE.cronica.WEAPON.ApollonArrow.ItemMode dummy
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}},count:1}]}] run scoreboard players set @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode 1

# 左手にあったわ
# オフハンド
data modify storage cronica:context Item.Value set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
data modify storage cronica:context Item.Count set from entity @s equipment.offhand.count
execute if data storage cronica:context Item{Value: "ApollonArrow"} run scoreboard objectives add SCORE.cronica.WEAPON.ApollonArrow.ItemMode dummy
execute if data storage cronica:context Item{Value: "ApollonArrow"} run scoreboard players reset @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode
execute if data storage cronica:context Item{Value: "ApollonArrow"} if data storage cronica:context Item{Count:1} run scoreboard players set @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode 1
data remove storage cronica:context Item

# アイテムを置き換え
function cronica:player/character/list/ikaros/unique/apollon_bow/get
# =================================================================================================
