# =================================================================================================

## タグ管理
tag @s remove TAG.cronica.GIMMICK.wall_climb.Charged
tag @s remove TAG.cronica.DETECT.IsSneaking

## スコア管理

# 実行加算値
scoreboard objectives add SCORE.cronica.GIMMICK.wall_climb.Charging dummy
scoreboard players add @s SCORE.cronica.GIMMICK.wall_climb.Charging 1
scoreboard objectives add SCORE.cronica.TIMER.wall_climb.ActivateTime dummy
scoreboard players add @s SCORE.cronica.TIMER.wall_climb.ActivateTime 1

# 初回設定
execute if score @s SCORE.cronica.GIMMICK.wall_climb.Charging matches 1 run function cronica:world/gimmick/special_move/wall_climb/setup
# =================================================================================================
