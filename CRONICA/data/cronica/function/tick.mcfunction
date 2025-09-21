#_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
#
# 常時実行を管理する関数
# 各常在系の関数をここで呼び出す
#
# 一部関数は TAG.cronica.GAMING タグを持つプレイヤーがいる場合のみ実行される
# TAG.cronica.GAMING : ゲーム参加中のプレイヤーに付与されるタグ
#
# 2tick後のschedule
# scheduleコマンドは同コマンドを打つとscheduleがリセットされるため、毎tick実行している限りは実行されない
# そのため、TAG.cronica.GAMING タグを持つプレイヤーがいなくなった場合に一度だけ実行される (タグ持ちがいないため後続の発砲がない)
# 用途としてはスコアなどの撤去に使用する
#
#_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

## 初回実行

# サーバー参加時
execute as @a[gamemode=survival] run function cronica:system/join_server

## 身体強化
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:player/status/effect

# ステージ管理
#execute unless entity @a[tag=!TAG.cronica.GAMING] run kill @e[tag=TAG.cronica.VILLAGER.GameController]
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:stage/gimmick/main
execute if entity @a[tag=TAG.cronica.GAMING] run schedule function cronica:stage/gimmick/main 2t

#//////////////////////////////////////////////////////////////////////////////////////////////////
## 検知

# 使用検知
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:player/status/check/main
execute if entity @a[tag=TAG.cronica.GAMING] run schedule function cronica:player/status/check/main 2t

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
execute as @e[type=arrow] store result score @s SCORE.cronica.CONFIG run data get entity @s inGround
execute as @e[type=arrow, scores={SCORE.cronica.CONFIG=1}] run kill @s

# アイテム投げられん
execute as @e[type=minecraft:item] at @s if entity @p[gamemode=creative,distance=..2] run kill @s
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item] at @s run tp @s @p

# 経験値は増えない
execute as @e[type=minecraft:experience_orb] run kill @s
#//////////////////////////////////////////////////////////////////////////////////////////////////