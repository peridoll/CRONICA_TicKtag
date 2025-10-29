# =================================================================================================

# コンフィグ読み込み
function cronica_dev:world/gimmick/special_move/config

# 目標値設定
scoreboard objectives add SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Goal dummy
scoreboard players operation @s SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Goal = #CONFIG.cronica_dev.GIMMICK.wall_climb.ChargeTime SCORE.cronica_dev.CONFIG
scoreboard players operation @s SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Goal /= #10 SCORE.cronica_dev.CONFIG

# 進行カウント設定 & 初回実行
scoreboard objectives add SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Count dummy
function cronica_dev:world/gimmick/special_move/wall_climb/progress
# =================================================================================================
