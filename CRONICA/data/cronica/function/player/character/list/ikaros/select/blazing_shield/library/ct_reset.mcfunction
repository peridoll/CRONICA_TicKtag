# スコア管理
scoreboard players reset @s SCORE.cronica.MODE.BlazingShield
execute unless entity @a[scores={SCORE.cronica.MODE.BlazingShield=-1..}] run scoreboard objectives remove SCORE.cronica.MODE.BlazingShield
scoreboard players reset @s SCORE.cronica.TIMER.BlazingShield.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.BlazingShield.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.BlazingShield.CoolTime.Goal
execute unless entity @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.BlazingShield.CoolTime.Stack
execute unless entity @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.BlazingShield.CoolTime.Stack.Goal