# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.GIMMICK.wall_climb.Charging
execute unless entity @a[scores={SCORE.cronica.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica.GIMMICK.wall_climb.Charging
execute unless entity @a[scores={SCORE.cronica.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.wall_climb.ActivateTime
execute unless entity @a[scores={SCORE.cronica.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.wall_climb.ActivateTime.Goal
execute unless entity @a[scores={SCORE.cronica.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.wall_climb.ActivateTime.Count
# =================================================================================================
