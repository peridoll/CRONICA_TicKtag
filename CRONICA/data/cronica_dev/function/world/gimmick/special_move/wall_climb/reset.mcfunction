# =================================================================================================

# タグ管理
tag @s remove TAG.cronica_dev.GIMMICK.wall_climb.Charged

# スコア管理
scoreboard players reset @s SCORE.cronica_dev.GIMMICK.wall_climb.Charging
execute unless entity @a[scores={SCORE.cronica_dev.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica_dev.GIMMICK.wall_climb.Charging
execute unless entity @a[scores={SCORE.cronica_dev.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.wall_climb.ActivateTime
execute unless entity @a[scores={SCORE.cronica_dev.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Goal
execute unless entity @a[scores={SCORE.cronica_dev.GIMMICK.wall_climb.Charging=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.wall_climb.ActivateTime.Count
# =================================================================================================
