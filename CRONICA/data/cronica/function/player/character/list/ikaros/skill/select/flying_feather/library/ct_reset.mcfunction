# スコア管理
scoreboard players reset @s SCORE.cronica.MODE.FlyingFeather
execute unless entity @a[scores={SCORE.cronica.MODE.FlyingFeather=0..}] run scoreboard objectives remove SCORE.cronica.MODE.FlyingFeather
scoreboard players reset @s SCORE.cronica.TIMER.FlyingFeather.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.FlyingFeather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.FlyingFeather.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.FlyingFeather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.FlyingFeather.CoolTime.Goal
execute unless entity @a[scores={SCORE.cronica.TIMER.FlyingFeather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.FlyingFeather.CoolTime.Stack
execute unless entity @a[scores={SCORE.cronica.TIMER.FlyingFeather.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.FlyingFeather.CoolTime.Stack.Goal