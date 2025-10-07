# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.spinning_slash.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.spinning_slash.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.spinning_slash.ActivateTime
# =================================================================================================
