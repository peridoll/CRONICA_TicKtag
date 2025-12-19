
tag @s add TAG.cronica.STATUS.MotionVector.Owner

execute if score $x SCORE.cronica.STATUS.MotionVector matches 1000001.. run scoreboard players set $x SCORE.cronica.STATUS.MotionVector 1000000
execute if score $x SCORE.cronica.STATUS.MotionVector matches ..-1000001 run scoreboard players set $x SCORE.cronica.STATUS.MotionVector -1000000
execute if score $y SCORE.cronica.STATUS.MotionVector matches 1000001.. run scoreboard players set $y SCORE.cronica.STATUS.MotionVector 1000000
execute if score $y SCORE.cronica.STATUS.MotionVector matches ..-1000001 run scoreboard players set $y SCORE.cronica.STATUS.MotionVector -1000000
execute if score $z SCORE.cronica.STATUS.MotionVector matches 1000001.. run scoreboard players set $z SCORE.cronica.STATUS.MotionVector 1000000
execute if score $z SCORE.cronica.STATUS.MotionVector matches ..-1000001 run scoreboard players set $z SCORE.cronica.STATUS.MotionVector -1000000
execute unless score $x SCORE.cronica.STATUS.MotionVector = $x SCORE.cronica.STATUS.MotionVector run scoreboard players set $x SCORE.cronica.STATUS.MotionVector 0
execute unless score $y SCORE.cronica.STATUS.MotionVector = $y SCORE.cronica.STATUS.MotionVector run scoreboard players set $y SCORE.cronica.STATUS.MotionVector 0
execute unless score $z SCORE.cronica.STATUS.MotionVector = $z SCORE.cronica.STATUS.MotionVector run scoreboard players set $z SCORE.cronica.STATUS.MotionVector 0

data merge storage cronica:temp {\
  Signs: {X: 1, Y: 1, Z: 1}, \
  Macro: {X1: 0, X2: 0, X3: 0, Y1: 0, Y2: 0, Y3: 0, z1: 0, z2: 0, Z3: 0, SignY: "+"} \
}

execute if score $x SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp Signs.X set value -1
execute if data storage cronica:temp Signs{X: -1} run scoreboard players operation $x SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG

execute store result storage cronica:temp Macro.X1 int 0.0001 run scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector = $x SCORE.cronica.STATUS.MotionVector
execute store result storage cronica:temp Macro.X2 int 0.01 run scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.X3 int 1 run scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG

execute if data storage cronica:temp Signs{X: -1} run scoreboard players operation $x SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG

execute if data storage cronica:temp Macro{X1: 0} run data modify storage cronica:temp Macro.X1 set value 100
execute if data storage cronica:temp Macro{X2: 0} run data modify storage cronica:temp Macro.X2 set value 100
execute if data storage cronica:temp Macro{X3: 0} run data modify storage cronica:temp Macro.X3 set value 100

execute if score $y SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp Signs.Y set value -1
execute if data storage cronica:temp Signs{Y:-1} run scoreboard players operation $y SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.Y1 int 0.0001 run scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector = $y SCORE.cronica.STATUS.MotionVector
execute store result storage cronica:temp Macro.Y2 int 0.01 run scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.Y3 int 1 run scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG
execute if data storage cronica:temp Signs{Y:-1} run scoreboard players operation $y SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG
execute if data storage cronica:temp Macro{Y1:0} run data modify storage cronica:temp Macro.Y1 set value 100
execute if data storage cronica:temp Macro{Y2:0} run data modify storage cronica:temp Macro.Y2 set value 100
execute if data storage cronica:temp Macro{Y3:0} run data modify storage cronica:temp Macro.Y3 set value 100

execute if data storage cronica:temp Signs{Y:-1} run data modify storage cronica:temp Macro.SignY set value "-"

execute if score $z SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp Signs.Z set value -1
execute if data storage cronica:temp Signs{Z:-1} run scoreboard players operation $z SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.z1 int 0.0001 run scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector = $z SCORE.cronica.STATUS.MotionVector
execute store result storage cronica:temp Macro.z2 int 0.01 run scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.Z3 int 1 run scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG
execute if data storage cronica:temp Signs{Z:-1} run scoreboard players operation $z SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG
execute if data storage cronica:temp Macro{z1:0} run data modify storage cronica:temp Macro.z1 set value 100
execute if data storage cronica:temp Macro{z2:0} run data modify storage cronica:temp Macro.z2 set value 100
execute if data storage cronica:temp Macro{Z3:0} run data modify storage cronica:temp Macro.Z3 set value 100

scoreboard players reset #VectorMaster_X SCORE.cronica.STATUS.MotionVector
scoreboard players reset #VectorMaster_Y SCORE.cronica.STATUS.MotionVector
scoreboard players reset #VectorMaster_Z SCORE.cronica.STATUS.MotionVector

execute if entity @s[type=player] positioned as @s run function p_motion:system/summon with storage cronica:temp Macro
