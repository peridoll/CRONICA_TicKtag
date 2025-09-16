# タイマー管理
scoreboard players add @e[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=0..}] SCORE.cronica.TIMER.FlyingFeather.ActivateTime 1

# 限界高度到達
effect clear @a[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=10}] minecraft:levitation

# 装飾
#[羽ばたき]
execute as @a[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=20}] at @s run function cronica:player/character/list/ikaros/skill/select/flying_feather/library/flaping
execute as @a[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=25}] at @s run function cronica:player/character/list/ikaros/skill/select/flying_feather/library/flaping
execute as @a[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=30}] at @s run function cronica:player/character/list/ikaros/skill/select/flying_feather/library/flaping

# 停止
execute as @a[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=0..19}] at @s unless block ~ ~2.1 ~ #cronica:no_collision run function cronica:player/character/list/ikaros/skill/select/flying_feather/library/stop_ceiling
execute as @a[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=0..},tag=TAG.cronica.STUNNING] run function cronica:player/character/list/ikaros/skill/select/flying_feather/library/stop_stun

# 完了
execute as @e[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=30..}] at @s run function cronica:player/character/list/ikaros/skill/select/flying_feather/library/finish

# ループ処理
execute if entity @e[scores={SCORE.cronica.TIMER.FlyingFeather.ActivateTime=0..}] run schedule function cronica:player/character/list/ikaros/skill/select/flying_feather/library/main 1t