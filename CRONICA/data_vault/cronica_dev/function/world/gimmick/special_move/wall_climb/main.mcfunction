# =================================================================================================

# キャンセルチェック
execute if entity @s[tag=TAG.cronica_dev.GIMMICK.wall_climb.Charged] if score @s SCORE.cronica_dev.GIMMICK.wall_climb.Charging matches 1.. run function cronica_dev:world/gimmick/special_move/wall_climb/cancel
tag @s[scores={SCORE.cronica_dev.GIMMICK.wall_climb.Charging=1..}] add TAG.cronica_dev.GIMMICK.wall_climb.Charged

# スタック進行
execute if score @s SCORE.cronica_dev.TIMER.wall_climb.ActivateTime >= @s SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Goal at @s run function cronica_dev:world/gimmick/special_move/wall_climb/progress

# チャージ完了
execute if score @s SCORE.cronica_dev.GIMMICK.wall_climb.Charging >= #CONFIG.cronica_dev.GIMMICK.wall_climb.ChargeTime SCORE.cronica_dev.CONFIG run function cronica_dev:world/gimmick/special_move/wall_climb/complete
# =================================================================================================
