# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.flying_feather.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.flying_feather.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.ActivateTime
# =================================================================================================
