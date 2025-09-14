## 通知

# ゲームルール
function cronica:system/gamerule
function cronica:system/scoreboard/world_score_setup

# リロード完了
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"INFO","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"リロードが完了しました","color":"red","bold":true}]
tellraw @a [{"text":"Created By ","color":"gray"},{"text":"TicK-tag","color":"green","underlined":true}]