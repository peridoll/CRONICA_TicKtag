# タイトル
title @s[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Count=1..}] times 0 60 20
title @s[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Count=1..}] actionbar ""

# スコア管理
scoreboard players reset @s SCORE.cronica.TIMER.GimmickWallClimb.Charge
execute unless entity @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.GimmickWallClimb.Charge
execute unless entity @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.GimmickWallClimb.Charge.Goal
execute unless entity @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack
execute unless entity @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Goal
execute unless entity @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Count