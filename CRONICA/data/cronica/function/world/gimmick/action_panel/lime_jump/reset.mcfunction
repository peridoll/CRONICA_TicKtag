# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.jump_panel.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.jump_panel.ActivateTime=1..}] run scoreboard objectives remove SCORE.cronica.TIMER.jump_panel.ActivateTime
# =================================================================================================
