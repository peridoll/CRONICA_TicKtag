# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime
execute unless entity @a[scores={SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime
# =================================================================================================
