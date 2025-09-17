# アイテム置き換え
scoreboard players add @s SCORE.cronica.MODE.FlyingFeather 1
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 0 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 0}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 1 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 1}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 2 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 2}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 3 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 3}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 4 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 4}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 5 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 5}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 6 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 6}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 7 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 7}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 8 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 8}
execute if score @s SCORE.cronica.MODE.FlyingFeather matches 9 run function cronica:player/status/item_display/model/damage {ItemID: "FlyingFeather", Damage: 9}

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.FlyingFeather.CoolTime.Stack