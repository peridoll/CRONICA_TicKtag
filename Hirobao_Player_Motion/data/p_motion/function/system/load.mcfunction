
#> p_motion:system/load
# 一度だけ実行

# 使用するスコアボード
# scoreboard objectives add SCORE.cronica.CONFIG dummy
# scoreboard players set #-1 SCORE.cronica.CONFIG -1
# scoreboard players set #100 SCORE.cronica.CONFIG 100
# scoreboard players set #10000 SCORE.cronica.CONFIG 10000
# scoreboard players set #2048 SCORE.cronica.CONFIG 2048
# 使用するストレージ
# data merge storage cronica:temp {Macro: {X1: 0, X2: 0, X3: 0, Y1: 0, Y2: 0, Y3: 0, z1: 0, z2: 0, Z3: 0, SignY: "+"}, Pos: [0, 0, 0]}

# 計算用チャンク
# execute in minecraft:overworld run forceload add 0 0
