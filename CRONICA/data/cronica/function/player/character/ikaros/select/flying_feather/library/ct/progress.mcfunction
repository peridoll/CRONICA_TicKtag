# =================================================================================================

## アイテム置き換え

# アイテム確保
# execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"FlyingFeather"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"FlyingFeather","ItemStatus":"ready"}]
# execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"FlyingFeather"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"FlyingFeather","ItemStatus":"ban"}]
# execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"FlyingFeather"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"FlyingFeather","ItemStatus":"used"}]
# execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"FlyingFeather"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"FlyingFeather","ItemStatus":"charging"}]
# execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"FlyingFeather"}}}]}] run function cronica:player/character/list/ikaros/select/flying_feather/get

# 状態スコア更新
# scoreboard players add @s SCORE.cronica.MODE.FlyingFeather 1
# execute store result storage cronica:skill_mode value int 1 run scoreboard players get @s SCORE.cronica.MODE.FlyingFeather

# 置き換え実施
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 0 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 0}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 1 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 1}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 2 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 2}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 3 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 3}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 4 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 4}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 5 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 5}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 6 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 6}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 7 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 7}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 8 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 8}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 9 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 9}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 10 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 10}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 11 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 11}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 12 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 12}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 13 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 13}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 14 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 14}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 15 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 15}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 16 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 16}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 17 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 17}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 18 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 18}
# execute if score @s SCORE.cronica.MODE.FlyingFeather matches 19 run function cronica:player/status/item_display/model/charging {ItemID: "FlyingFeather", Gauge: 19}

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.flying_feather.CoolTime.Stack
# =================================================================================================
