# スコア管理
scoreboard objectives add SCORE.cronica.TIMER.GimmickWallClimb.Charge dummy
scoreboard players add @s SCORE.cronica.TIMER.GimmickWallClimb.Charge 0

#[コンフィグロード]
function cronica:stage/gimmick/wall_climb/config
#[リロード時間]
scoreboard objectives add SCORE.cronica.TIMER.GimmickWallClimb.Charge dummy
scoreboard players add @s SCORE.cronica.TIMER.GimmickWallClimb.Charge 0
scoreboard objectives add SCORE.cronica.TIMER.GimmickWallClimb.Charge.Goal dummy
scoreboard objectives add SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack dummy
scoreboard objectives add SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Goal dummy
scoreboard objectives add SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Count dummy
scoreboard players operation @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Goal = #CONFIG.cronica.GIMMICK.GimmickWallClimb.ChargeTime SCORE.cronica.CONFIG
scoreboard players operation @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Goal = @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Goal
scoreboard players operation @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Goal /= #10 SCORE.cronica.CONFIG

# ループ管理
schedule function cronica:stage/gimmick/wall_climb/library/main 1t