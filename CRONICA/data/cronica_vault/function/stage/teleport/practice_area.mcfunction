
## 情報

# タグ
tag @s add TAG.cronica.GAMING
tag @s add TAG.cronica.GAMING.practice

## ステータス

# 基本状態
#[ゲームモード]
gamemode adventure @s
#[レベル管理]
xp set @s 999 levels
xp set @s 0 points
#[ポイント管理]
#scoreboard players add @s SCORE.cronica.STATUS.Point 0

# エフェクト
effect clear @s
effect give @s minecraft:night_vision infinite 0 true

# チーム
#function cronica:system/options/team/change_battle_team

# インベントリ
clear @s
function cronica:player/inventory/get_template/free_battle

# スキル
function cronica:player/status/reset/skill

## テレポート

# 練習場
function cronica:stage/list/practice_area/teleport/enter

## 装飾

# サウンド
execute at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 10 1
# パーティクル
execute at @s run particle minecraft:composter ^ ^1 ^2 1 1 1 1 200 normal @s

## 通知

# 場所の通知
title @s times 15 60 15
title @s title [{"text":" "}]
title @s subtitle [{"text":"-","color":"gray","bold":false},{"text":"Practice Area","color":"gold","bold":false},{"text":"-","color":"gray","bold":false}]