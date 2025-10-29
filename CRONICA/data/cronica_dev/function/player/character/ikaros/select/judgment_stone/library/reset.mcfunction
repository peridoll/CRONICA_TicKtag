# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica_dev.TIMER.judgment_stone.ActivateTime
execute unless entity @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.judgment_stone.ActivateTime
# =================================================================================================
