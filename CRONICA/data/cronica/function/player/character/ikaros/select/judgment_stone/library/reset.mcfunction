# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.judgment_stone.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.judgment_stone.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.judgment_stone.ActivateTime
# =================================================================================================
