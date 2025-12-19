# =================================================================================================

##【 IMPULSE 】

  ## 指定の力で視点方向に対象を飛ばす

    # プレイヤー管理
      tag @s add TAG.cronica.STATUS.MotionVector.Owner

    # データ管理

      # ストレージを初期化
        data merge storage cronica:temp { \
          Signs: {X: 1, Y: 1, Z: 1}, \
          Macro: {X1: 0, X2: 0, X3: 0, Y1: 0, Y2: 0, Y3: 0, z1: 0, z2: 0, Z3: 0, SignY: "+"} \
        }

      # 指定された力の強さを取得
        scoreboard objectives add SCORE.cronica.STATUS.MotionVector dummy
        $scoreboard players set #VectorMaster SCORE.cronica.STATUS.MotionVector $(VectorPower)
        execute if score #VectorMaster SCORE.cronica.STATUS.MotionVector matches 1000001.. run scoreboard players set #VectorMaster SCORE.cronica.STATUS.MotionVector 1000000
        execute if score #VectorMaster SCORE.cronica.STATUS.MotionVector matches ..-1000001 run scoreboard players set #VectorMaster SCORE.cronica.STATUS.MotionVector -1000000
        scoreboard players add #VectorMaster SCORE.cronica.STATUS.MotionVector 0

      # 向いている方向から分解ベクトルを取得
        execute positioned 0.0 0.0 0.0 summon marker run function p_motion:system/get_rotation


























execute if score #VectorMaster_X SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp Signs.X set value -1

execute if data storage cronica:temp Signs{X:-1} run scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG

execute store result storage cronica:temp Macro.X1 int 0.0001 run scoreboard players get #VectorMaster_X SCORE.cronica.STATUS.MotionVector
execute store result storage cronica:temp Macro.X2 int 0.01 run scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.X3 int 1 run scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG

execute if data storage cronica:temp Macro{X1:0} run data modify storage cronica:temp Macro.X1 set value 100
execute if data storage cronica:temp Macro{X2:0} run data modify storage cronica:temp Macro.X2 set value 100
execute if data storage cronica:temp Macro{X3:0} run data modify storage cronica:temp Macro.X3 set value 100





execute if score #VectorMaster_Y SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp Signs.Y set value -1
execute if data storage cronica:temp Signs{Y:-1} run scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.Y1 int 0.0001 run scoreboard players get #VectorMaster_Y SCORE.cronica.STATUS.MotionVector
execute store result storage cronica:temp Macro.Y2 int 0.01 run scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.Y3 int 1 run scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG
execute if data storage cronica:temp Macro{Y1:0} run data modify storage cronica:temp Macro.Y1 set value 100
execute if data storage cronica:temp Macro{Y2:0} run data modify storage cronica:temp Macro.Y2 set value 100
execute if data storage cronica:temp Macro{Y3:0} run data modify storage cronica:temp Macro.Y3 set value 100



execute if data storage cronica:temp Signs{Y:-1} run data modify storage cronica:temp Macro.SignY set value "-"



execute if score #VectorMaster_Z SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp Signs.Z set value -1
execute if data storage cronica:temp Signs{Z:-1} run scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.z1 int 0.0001 run scoreboard players get #VectorMaster_Z SCORE.cronica.STATUS.MotionVector
execute store result storage cronica:temp Macro.z2 int 0.01 run scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
execute store result storage cronica:temp Macro.Z3 int 1 run scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG
execute if data storage cronica:temp Macro{z1:0} run data modify storage cronica:temp Macro.z1 set value 100
execute if data storage cronica:temp Macro{z2:0} run data modify storage cronica:temp Macro.z2 set value 100
execute if data storage cronica:temp Macro{Z3:0} run data modify storage cronica:temp Macro.Z3 set value 100






scoreboard players reset #VectorMaster_X SCORE.cronica.STATUS.MotionVector
scoreboard players reset #VectorMaster_Y SCORE.cronica.STATUS.MotionVector
scoreboard players reset #VectorMaster_Z SCORE.cronica.STATUS.MotionVector

execute if entity @s[type=player] positioned as @s run function p_motion:system/summon with storage cronica:temp Macro
