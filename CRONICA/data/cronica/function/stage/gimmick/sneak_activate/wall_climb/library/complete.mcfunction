# 衝突:ブロック
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^ #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^ #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^ ^ ^0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^ ^ ^-0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^-0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^-0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check

# 装飾
execute as @s at @s run playsound minecraft:block.ladder.step player @s ~ ~ ~ 0.3 1

# テレポート
execute as @s[tag=!TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
tag @s remove TAG.cronica.GIMMICK.stage_gimmick_specialmove.ClimbWall.Check