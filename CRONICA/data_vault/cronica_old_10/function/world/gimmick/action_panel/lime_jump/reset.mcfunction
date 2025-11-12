# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica_dev.TIMER.jump_panel.ActivateTime
execute unless entity @a[scores={SCORE.cronica_dev.TIMER.jump_panel.ActivateTime=1..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.jump_panel.ActivateTime
# =================================================================================================
