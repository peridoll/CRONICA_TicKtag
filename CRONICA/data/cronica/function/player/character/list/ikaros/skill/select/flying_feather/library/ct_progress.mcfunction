## アイテム置き換え

# アイテム確保
# << 移動中などの場合、アイテムが消失する可能性があるため、予めインベントリに確保しておく >>
# execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{"ItemID": "FlyingFeather"}}}]}] run clear @s diamond_horse_armor
# execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{"ItemID": "FlyingFeather"}}}]}] run function cronica:player/character/list/ikaros/skill/select/flying_feather/get

# 状態スコア更新
scoreboard players add @s SCORE.cronica.MODE.FlyingFeather 1
# execute store result storage cronica:skill_mode value int 1 run scoreboard players get @s SCORE.cronica.MODE.FlyingFeather

# 置き換え実施
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 0 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 0}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 1 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 1}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 2 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 2}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 3 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 3}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 4 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 4}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 5 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 5}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 6 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 6}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 7 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 7}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 8 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 8}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 9 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 9}

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.FlyingFeather.CoolTime.Stack