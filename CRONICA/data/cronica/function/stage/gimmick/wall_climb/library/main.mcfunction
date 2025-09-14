# スコア管理
scoreboard players add @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] SCORE.cronica.TIMER.GimmickWallClimb.Charge 1
scoreboard players add @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack 1

# チェック
execute as @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] at @s unless block ~ ~ ~ #cronica:fence run function cronica:stage/gimmick/wall_climb/library/reset
execute as @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..},tag=!TAG.cronica.SNEAKING] run function cronica:stage/gimmick/wall_climb/library/reset
execute as @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run tag @s remove TAG.cronica.SNEAKING

# スタック進行
execute as @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] if score @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack >= @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Stack.Goal at @s run function cronica:stage/gimmick/wall_climb/library/progress

# チャージ完了
execute as @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] if score @s SCORE.cronica.TIMER.GimmickWallClimb.Charge >= @s SCORE.cronica.TIMER.GimmickWallClimb.Charge.Goal run function cronica:stage/gimmick/wall_climb/library/complete

# ループ管理
execute if entity @a[scores={SCORE.cronica.TIMER.GimmickWallClimb.Charge=0..}] run schedule function cronica:stage/gimmick/wall_climb/library/main 1t