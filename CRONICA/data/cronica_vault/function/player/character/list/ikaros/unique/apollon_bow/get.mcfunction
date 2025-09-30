# =================================================================================================

##【 アイテムを入手するための関数 】
# コマンドブロックからや手打ちでの運用を想定

#【 アイテム入手 】
# 対象のアイテムを持っていない場合に基本形態を入手する
#[Load]

#[Give]
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}}]}] run tag @s add TAG.cronica.WEAPON.ApollonArrow.Has
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonBow"}}}]}] run tag @s add TAG.cronica.WEAPON.ApollonBow.Has
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
execute if data storage cronica:context ItemID.Offhand{Value: "ApollonBow"} run tag @s add TAG.cronica.WEAPON.ApollonBow.Has
execute if data storage cronica:context ItemID.Offhand{Value: "ApollonArrow"} run tag @s add TAG.cronica.WEAPON.ApollonArrow.Has
execute as @s[tag=!TAG.cronica.WEAPON.ApollonBow.Has] run loot give @s loot cronica:character/ikaros/unique/apollon_bow
execute as @s[tag=!TAG.cronica.WEAPON.ApollonArrow.Has] run loot give @s loot cronica:character/ikaros/unique/apollon_arrow
tag @s remove TAG.cronica.WEAPON.ApollonArrow.Has
data remove storage cronica:context ItemID
# =================================================================================================

##【 弾薬表示変更 】
# 所持している弾薬の残段数に応じて見た目を変える
execute if score @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode matches 1 run function cronica:player/status/item_data/free_replace {ItemID:"ApollonArrow", Address:"character/ikaros/unique/apollon_arrow", Model:"one", Count:1}
execute if score @s SCORE.cronica.WEAPON.ApollonArrow.ItemMode matches 0 run function cronica:player/status/item_data/free_replace {ItemID:"ApollonArrow", Address:"character/ikaros/unique/apollon_arrow", Model:"zero", Count:1}
scoreboard objectives remove SCORE.cronica.WEAPON.ApollonArrow.ItemMode
# =================================================================================================
