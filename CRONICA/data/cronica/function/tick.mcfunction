## 初回実行

# サーバー参加時
execute as @a[gamemode=survival] run function cronica:system/join_server

## 身体強化
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:player/status/basic_effect
#execute unless entity @a[tag=!TAG.cronica.GAMING] run kill @e[tag=TAG.cronica.VILLAGER.GameController]

# ステージ管理
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:stage/gimmick/tick
execute if entity @a[tag=TAG.cronica.GAMING] run schedule function cronica:stage/gimmick/tick 2t

## 検知

# 使用検知
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:player/status/check/use
execute if entity @a[tag=TAG.cronica.GAMING] run schedule function cronica:player/status/check/use 2t

# デス検知
# execute if entity @a[tag=TAG.cronica.GAMING] run scoreboard objectives add SCORE.cronica.STATUS.Death deathCount
# execute unless entity @a[tag=TAG.cronica.GAMING] run scoreboard objectives remove SCORE.cronica.STATUS.Death
# execute as @a[scores={SCORE.cronica.STATUS.Death=1..}] at @s run function cronica:player/status/check/battle/death

# スコアリセット
# function cronica:system/options/scoreboard/gaming_check/reset
# execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:system/options/scoreboard/gaming_check/setup
# execute unless entity @a[tag=TAG.cronica.GAMING] run function cronica:system/options/scoreboard/gaming_check/delete

#//////////////////////////////////////////////////////////////////////////////////////////////////
## SYSTEM

# 腹減り無し
effect give @a saturation infinite 1 true
# 矢の撤去
# execute as @e[type=arrow] store result score @s SCORE.cronica.CONFIG run data get entity @s inGround
# execute as @e[type=arrow, scores={SCORE.cronica.CONFIG=1}] run kill @s
# アイテム投げられん
execute as @e[type=minecraft:item] at @s if entity @p[gamemode=creative,distance=..2] run kill @s
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item] at @s run tp @s @p
# 経験値は増えない
execute as @e[type=minecraft:experience_orb] run kill @s
#//////////////////////////////////////////////////////////////////////////////////////////////////