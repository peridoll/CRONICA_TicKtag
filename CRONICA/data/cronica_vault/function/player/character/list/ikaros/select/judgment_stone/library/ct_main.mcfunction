# スコア管理
scoreboard players add @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.JudgmentStone.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] if score @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack >= @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack.Goal at @s run function cronica:player/character/list/ikaros/select/judgment_stone/library/ct_progress

# チャージ完了
execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] if score @s SCORE.cronica.TIMER.JudgmentStone.CoolTime >= @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Goal at @s run function cronica:player/character/list/ikaros/select/judgment_stone/library/ct_finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.JudgmentStone.CoolTime=0..}] run schedule function cronica:player/character/list/ikaros/select/judgment_stone/library/ct_main 1t