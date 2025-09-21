## アイテム置き換え

# アイテム確保
# << 移動中などの場合、アイテムが消失する可能性があるため、予めインベントリに確保しておく >>
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"JudgmentStone"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"JudgmentStone","ItemStatus":"ready"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"JudgmentStone"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"JudgmentStone","ItemStatus":"ban"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"JudgmentStone"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"JudgmentStone","ItemStatus":"used"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"JudgmentStone"}}}]}] run clear @s minecraft:diamond_horse_armor[minecraft:custom_data={"ItemCategory":"SelectSkill","ItemID":"JudgmentStone","ItemStatus":"charging"}]
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID":"JudgmentStone"}}}]}] run function cronica:player/character/list/ikaros/select/judgment_stone/get

# TODO: 帰ってきたアイテムは状態が"ready"のものなので、使用後の状態に置き換え

# 状態スコア更新
scoreboard players add @s SCORE.cronica.MODE.JudgmentStone 1
# execute store result storage cronica:skill_mode value int 1 run scoreboard players get @s SCORE.cronica.MODE.JudgmentStone

# 置き換え実施
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 0 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 0}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 1 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 1}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 2 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 2}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 3 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 3}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 4 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 4}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 5 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 5}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 6 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 6}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 7 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 7}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 8 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 8}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 9 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 9}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 10 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 10}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 11 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 11}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 12 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 12}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 13 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 13}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 14 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 14}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 15 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 15}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 16 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 16}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 17 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 17}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 18 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 18}
execute if score @s SCORE.cronica.MODE.JudgmentStone matches 19 run function cronica:player/status/item_display/model/charging {ItemID: "JudgmentStone", Gauge: 19}

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack