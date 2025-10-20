# =================================================================================================

# タグ管理
tag @s remove TAG.cronica.CT_ZERO
tag @s remove TAG.cronica.CT_HANDICAP
tag @s remove TAG.cronica.GAMING
tag @s remove TAG.cronica.GAMING.spectate
tag @s remove TAG.cronica.GAMING.practice

# ゲームモード
gamemode adventure @s

# レベル管理
xp set @s 0 levels
xp set @s 0 points

# エフェクト
effect clear @s
effect give @s minecraft:saturation infinite 100 true
effect give @s minecraft:instant_health infinite 100 true
effect give @s minecraft:resistance infinite 100 true
effect give @s minecraft:night_vision infinite 0 true

# インベントリ
clear @s
function cronica:player/status/inventory/kit/lobby_set

# メインロビーへテレポート
function cronica:world/stage/lobby/teleport/enter

## 装飾
execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 10 1
execute at @s run particle minecraft:entity_effect{color:[0.0,1.0,1.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
execute at @s run particle minecraft:entity_effect{color:[1.0,0.0,1.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
execute at @s run particle minecraft:entity_effect{color:[1.0,1.0,0.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
execute at @s run particle minecraft:entity_effect{color:[0.0,1.0,0.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s

# 場所の通知
title @s times 15 60 15
title @s title [{"text":" "}]
title @s subtitle [{"text":"-","color":"gray","bold":false},{"text":"Main Lobby","color":"gold","bold":false},{"text":"-","color":"gray","bold":false}]

# サーバー参加時通知
execute as @s[tag=TAG.cronica.STATUS.JoinServer] run title @s title [{"text":"<<","color":"gray","bold":false},{"text":" CRONICA ","color":"green","bold":true},{"text":">>","color":"gray","bold":false}]
execute as @s[tag=TAG.cronica.STATUS.JoinServer] run title @s subtitle [{"text":"Presented By TicK-tag"}]
execute as @s[tag=TAG.cronica.STATUS.JoinServer] run tag @s remove TAG.cronica.STATUS.JoinServer
# =================================================================================================
