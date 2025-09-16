# エフェクト
execute as @s at @s run tp @s ~ ~ ~
execute as @s run effect clear @s minecraft:levitation

# スコア管理
execute as @s run scoreboard players set @s SCORE.cronica.TIMER.player_skill.FlyingFeather.ActivateTime 30