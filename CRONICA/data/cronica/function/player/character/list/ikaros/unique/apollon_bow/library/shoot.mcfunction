# =================================================================================================

##【 残段数管理 】
# 残段数が特定の数になった場合、所持している弾薬の見た目を変える

# 残数が一発
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}},count:1}]}] run scoreboard objectives add SCORE.cronica.WEAPON.ApollonArrow.ItemMode dummy
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}},count:1}]}] run scoreboard players set @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode 1

# 残数がなし
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run scoreboard objectives add SCORE.cronica.WEAPON.ApollonArrow.ItemMode dummy
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run scoreboard players set @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode 0

# アイテムを置き換え
function cronica:player/character/list/ikaros/unique/apollon_bow/get
# =================================================================================================
