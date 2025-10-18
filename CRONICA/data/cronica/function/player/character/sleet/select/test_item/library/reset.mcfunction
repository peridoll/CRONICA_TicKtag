# =================================================================================================

# スコアの片付け
scoreboard players reset @s SCORE.cronica.TIMER.flying_feather.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.flying_feather.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.ActivateTime
scoreboard players reset @s SCORE.cronica.CALC.test_item.Angle45

# プレビュー状態の解除
tag @s remove TAG.cronica.preview

# =================================================================================================
