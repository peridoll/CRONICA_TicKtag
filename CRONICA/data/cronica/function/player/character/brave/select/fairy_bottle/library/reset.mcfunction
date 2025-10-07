# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.fairy_bottle.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.fairy_bottle.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.fairy_bottle.ActivateTime
# =================================================================================================
