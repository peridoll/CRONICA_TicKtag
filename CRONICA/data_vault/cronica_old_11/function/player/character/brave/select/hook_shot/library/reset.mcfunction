# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica_dev.TIMER.hook_shot.ActivateTime
execute unless entity @a[scores={SCORE.cronica_dev.TIMER.hook_shot.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.hook_shot.ActivateTime
# =================================================================================================
