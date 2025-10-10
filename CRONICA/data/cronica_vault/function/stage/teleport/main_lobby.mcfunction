# ## 情報

# # タグ
# tag @s remove TAG.cronica.CT_ZERO
# tag @s remove TAG.cronica.CT_HANDICAP
# tag @s remove TAG.cronica.GAMING
# tag @s remove TAG.cronica.GAMING.spectator
# tag @s remove TAG.cronica.GAMING.practice

# ## ステータス

# # 基本状態
# #[ゲームモード]
# gamemode adventure @s
# #[レベル管理]
# xp set @s 0 levels
# xp set @s 0 points
# #[ポイント管理]
# #scoreboard players reset @s SCORE.cronica.STATUS.Point
# #execute unless entity @a[scores={SCORE.cronica.STATUS.Point=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.Point

# # エフェクト
# effect clear @s
# effect give @s minecraft:saturation infinite 100 true
# effect give @s minecraft:instant_health infinite 100 true
# effect give @s minecraft:resistance infinite 100 true
# effect give @s minecraft:night_vision infinite 0 true

# # チーム
# #function cronica:system/options/team/change_lobby_team

# # インベントリ
# clear @s
# function cronica:player/inventory/get_template/lobby

# # スキル
# function cronica:player/status/reset/skill

# ## テレポート

# # メインロビー
# function cronica:stage/list/lobby/teleport/enter

# ## 装飾

# # サウンド
# execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 10 1
# # パーティクル
# execute at @s run particle minecraft:entity_effect{color:[0.0,1.0,1.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
# execute at @s run particle minecraft:entity_effect{color:[1.0,0.0,1.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
# execute at @s run particle minecraft:entity_effect{color:[1.0,1.0,0.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
# execute at @s run particle minecraft:entity_effect{color:[0.0,1.0,0.0,0.7]} ^ ^1 ^2 1 1 1 1 200 force @s

# ## 通知

# # 場所の通知
# title @s times 15 60 15
# title @s title [{"text":" "}]
# title @s subtitle [{"text":"-","color":"gray","bold":false},{"text":"Main Lobby","color":"gold","bold":false},{"text":"-","color":"gray","bold":false}]

# # サーバー参加時
# execute as @s[tag=TAG.cronica.SYSTEM.JoinServer.JoinWorld] run title @s title [{"text":"<<","color":"gray","bold":false},{"text":" CRONICA ","color":"green","bold":true},{"text":">>","color":"gray","bold":false}]
# execute as @s[tag=TAG.cronica.SYSTEM.JoinServer.JoinWorld] run title @s subtitle [{"text":"Presented By TicK-tag"}]
# execute as @s[tag=TAG.cronica.SYSTEM.JoinServer.JoinWorld] run tag @s remove TAG.cronica.SYSTEM.JoinServer.JoinWorld

# ## データ管理
# # スコアリセット
# function cronica:system/scoreboard/reconstruction