# =================================================================================================

# スコア管理
scoreboard players add @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.flying_feather.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.flying_feather.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] if score @s SCORE.cronica.TIMER.flying_feather.CoolTime.Stack >= @s SCORE.cronica.TIMER.flying_feather.CoolTime.Stack.Goal at @s run function cronica:player/character/ikaros/select/flying_feather/library/ct/progress

# チャージ完了
execute as @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] if score @s SCORE.cronica.TIMER.flying_feather.CoolTime >= @s SCORE.cronica.TIMER.flying_feather.CoolTime.Goal at @s run function cronica:player/character/ikaros/select/flying_feather/library/ct/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.flying_feather.CoolTime=0..}] run schedule function cronica:player/character/ikaros/select/flying_feather/library/ct/main 1t
# =================================================================================================
