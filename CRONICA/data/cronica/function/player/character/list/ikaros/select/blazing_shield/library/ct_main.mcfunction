# スコア管理
scoreboard players add @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.BlazingShield.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.BlazingShield.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] if score @s SCORE.cronica.TIMER.BlazingShield.CoolTime.Stack >= @s SCORE.cronica.TIMER.BlazingShield.CoolTime.Stack.Goal at @s run function cronica:player/character/list/ikaros/select/blazing_shield/library/ct_progress

# チャージ完了
execute as @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] if score @s SCORE.cronica.TIMER.BlazingShield.CoolTime >= @s SCORE.cronica.TIMER.BlazingShield.CoolTime.Goal at @s run function cronica:player/character/list/ikaros/select/blazing_shield/library/ct_finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.BlazingShield.CoolTime=0..}] run schedule function cronica:player/character/list/ikaros/select/blazing_shield/library/ct_main 1t