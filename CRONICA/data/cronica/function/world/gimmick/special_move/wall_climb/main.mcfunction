# =================================================================================================

# キャンセルチェック
execute if entity @s[tag=TAG.cronica.GIMMICK.wall_climb.Charged] if score @s SCORE.cronica.GIMMICK.wall_climb.Charging matches 1.. run function cronica:world/gimmick/special_move/wall_climb/cancel
tag @s[scores={SCORE.cronica.GIMMICK.wall_climb.Charging=1..}] add TAG.cronica.GIMMICK.wall_climb.Charged

# スタック進行
execute if score @s SCORE.cronica.TIMER.wall_climb.ActivateTime >= @s SCORE.cronica.TIMER.wall_climb.ActivateTime.Goal at @s run function cronica:world/gimmick/special_move/wall_climb/progress

# チャージ完了
execute if score @s SCORE.cronica.GIMMICK.wall_climb.Charging >= #CONFIG.cronica.GIMMICK.wall_climb.ChargeTime SCORE.cronica.CONFIG run function cronica:world/gimmick/special_move/wall_climb/complete
# =================================================================================================
