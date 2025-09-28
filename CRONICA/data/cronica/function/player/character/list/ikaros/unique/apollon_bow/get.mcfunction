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
#[Load]

#[Give]
# execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonBow"}}}]}] run loot give @s loot cronica:character/ikaros/unique/apollon_bow
# execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run loot give @s loot cronica:character/ikaros/unique/apollon_arrow
# =================================================================================================

##【 弾薬表示変更 】
# 所持している弾薬の残段数に応じて見た目を変える
execute if score @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode matches 1 run function cronica:player/status/item_data/free_replace {ItemID:"ApollonArrow", Address:"character/ikaros/unique/apollon_arrow", Model:"one", Count:1}
execute if score @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode matches 0 run function cronica:player/status/item_data/free_replace {ItemID:"ApollonArrow", Address:"character/ikaros/unique/apollon_arrow", Model:"zero", Count:1}
scoreboard objectives remove SCORE.cronica.WEAPON.ApollonArrow.ItemMode
