# =================================================================================================

##【 アイテムを入手するための関数 】
# コマンドブロックからや手打ちでの運用を想定

#【 既存アイテム削除 】
# スニークをしているときはすでにあるアイテムを削除する
execute if predicate cronica:sneak run clear @s minecraft:bow[minecraft:custom_data={"ItemCategory":"MainWeapon", "ItemID":"ApollonBow", "ItemStatus":"default"}]
execute if predicate cronica:sneak run clear @s minecraft:bow[minecraft:custom_data={"ItemCategory":"MainWeapon", "ItemID":"ApollonBow", "ItemStatus":"twilight"}]
execute if predicate cronica:sneak run clear @s minecraft:arrow[minecraft:custom_data={"ItemCategory":"Ammo", "ItemID":"ApollonArrow", "ItemStatus":"default"}]
execute if predicate cronica:sneak run clear @s minecraft:arrow[minecraft:custom_data={"ItemCategory":"Ammo", "ItemID":"ApollonArrow", "ItemStatus":"twilight"}]
execute if predicate cronica:sneak run clear @s minecraft:stick[minecraft:custom_data={"ItemCategory":"Ammo", "ItemID":"ApollonArrow", "ItemStatus":"default"}]

#【 アイテム入手 】
# 対象のアイテムを持っていない場合に基本形態を入手する
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonBow"}}}]}] run loot give @s loot cronica:character/ikaros/unique/apollon_bow
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run loot give @s loot cronica:character/ikaros/unique/apollon_arrow
# =================================================================================================
