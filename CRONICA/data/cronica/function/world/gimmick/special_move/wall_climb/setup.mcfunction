# =================================================================================================

# コンフィグ読み込み
function cronica:world/gimmick/special_move/config

# 目標値設定
scoreboard objectives add SCORE.cronica.TIMER.wall_climb.ActivateTime.Goal dummy
scoreboard players operation @s SCORE.cronica.TIMER.wall_climb.ActivateTime.Goal = #CONFIG.cronica.GIMMICK.wall_climb.ChargeTime SCORE.cronica.CONFIG
scoreboard players operation @s SCORE.cronica.TIMER.wall_climb.ActivateTime.Goal /= #10 SCORE.cronica.CONFIG

# 進行カウント設定 & 初回実行
scoreboard objectives add SCORE.cronica.TIMER.wall_climb.ActivateTime.Count dummy
function cronica:world/gimmick/special_move/wall_climb/progress
# =================================================================================================
