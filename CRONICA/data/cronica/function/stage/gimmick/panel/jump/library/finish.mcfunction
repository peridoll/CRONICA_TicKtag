# エフェクト解除
effect clear @s levitation

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.GimmickPanel.Jump
execute unless entity @a[scores={SCORE.cronica.TIMER.GimmickPanel.Jump=1..}] run scoreboard objectives remove SCORE.cronica.TIMER.GimmickPanel.Jump