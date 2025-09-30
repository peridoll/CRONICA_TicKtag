# スコア管理
scoreboard players reset @s SCORE.cronica.MODE.JudgmentStone
execute unless entity @a[scores={SCORE.cronica.MODE.JudgmentStone=-1..}] run scoreboard objectives remove SCORE.cronica.MODE.JudgmentStone
scoreboard players reset @s SCORE.cronica.TIMER.JudgmentStone.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.JudgmentStone.CoolTime
execute unless entity @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.JudgmentStone.CoolTime.Goal
execute unless entity @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack
execute unless entity @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack.Goal