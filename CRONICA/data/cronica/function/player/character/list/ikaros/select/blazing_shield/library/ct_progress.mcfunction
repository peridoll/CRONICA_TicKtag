## アイテム置き換え

# アイテム確保
# << 移動中などの場合、アイテムが消失する可能性があるため、予めインベントリに確保しておく >>
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"BlazingShield"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"BlazingShield","ItemStatus":"ready"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"BlazingShield"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"BlazingShield","ItemStatus":"ban"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"BlazingShield"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"BlazingShield","ItemStatus":"used"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"BlazingShield"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"BlazingShield","ItemStatus":"charging"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"BlazingShield"}}}]}] run function cronica:player/character/list/ikaros/select/blazing_shield/get

# TODO: 帰ってきたアイテムは状態が"ready"のものなので、使用後の状態に置き換え

# 状態スコア更新
scoreboard players add @s SCORE.cronica.MODE.BlazingShield 1
# execute store result storage cronica:skill_mode value int 1 run scoreboard players get @s SCORE.cronica.MODE.BlazingShield

# 置き換え実施
execute if score @s SCORE.cronica.MODE.BlazingShield matches 0 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 0}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 1 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 1}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 2 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 2}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 3 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 3}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 4 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 4}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 5 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 5}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 6 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 6}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 7 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 7}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 8 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 8}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 9 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 9}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 10 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 10}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 11 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 11}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 12 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 12}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 13 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 13}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 14 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 14}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 15 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 15}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 16 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 16}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 17 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 17}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 18 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 18}
execute if score @s SCORE.cronica.MODE.BlazingShield matches 19 run function cronica:player/status/item_display/model/charging {ItemID: "BlazingShield", Gauge: 19}

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.BlazingShield.CoolTime.Stack