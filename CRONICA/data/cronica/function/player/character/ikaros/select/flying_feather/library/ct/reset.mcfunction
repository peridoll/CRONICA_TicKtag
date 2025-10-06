# =================================================================================================

# スコア管理
scoreboard players reset @s SCORE.cronica.MODE.flying_feather
execute unless entity @a[scores={SCORE.cronica.MODE.flying_feather=-1..}] run scoreboard objectives remove SCORE.cronica.MODE.flying_feather
scoreboard players reset @s SCORE.cronica.TIMER.flying_feather.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.CoolTime.Goal
execute unless entity @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.CoolTime.Stack
execute unless entity @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.CoolTime.Stack.Goal
# =================================================================================================
