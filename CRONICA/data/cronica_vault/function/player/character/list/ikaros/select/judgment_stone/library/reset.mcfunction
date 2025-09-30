# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.JudgmentStone.ActivateTime
execute unless entity @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.JudgmentStone.ActivateTime