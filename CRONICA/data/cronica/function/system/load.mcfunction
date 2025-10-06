# =================================================================================================

# スコア管理
execute unless entity @a run function cronica:system/preparation/scoreboard/reset
function cronica:system/preparation/scoreboard/config

# 実績リセット
execute as @a run function cronica:player/status/detection/advancements/revoke

# リロード通知
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"INFO","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"リロードが完了しました","color":"red","bold":true}]
tellraw @a [{"text":"Created By ","color":"gray"},{"text":"TicK-tag","color":"green","underlined":true}]
# =================================================================================================
