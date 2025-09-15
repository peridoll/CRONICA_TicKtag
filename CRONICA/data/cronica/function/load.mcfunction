#_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
#
# サーバー起動時に一度だけ実行される管理用関数
# Reload時にも実行される
#
# おおもとの管理用スコアや検知系のリセットに使用する
#
#_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

## 通知

# ゲームルール
function cronica:system/gamerule

# ADVANCEMENT初期化
execute as @a run function cronica:system/advancements/reset

# チーム設置
# execute unless entity @a run function cronica:system/options/team/delete
# function cronica:system/options/team/setup

# スコア設置
# execute unless entity @a run function cronica:system/options/scoreboard/delete
function cronica:system/scoreboard/world_score_setup

# リロード完了
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"INFO","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"リロードが完了しました","color":"red","bold":true}]
tellraw @a [{"text":"Created By ","color":"gray"},{"text":"TicK-tag","color":"green","underlined":true}]