# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.blazing_shield.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.blazing_shield.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.blazing_shield.ActivateTime
# =================================================================================================
