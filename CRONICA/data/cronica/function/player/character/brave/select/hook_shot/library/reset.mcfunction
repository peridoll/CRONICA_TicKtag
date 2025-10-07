# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.hook_shot.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.hook_shot.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.hook_shot.ActivateTime
# =================================================================================================
