# =================================================================================================

# 画面表示
title @s times 0 60 20
title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"ACTIVATE","color":"aqua","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]

# 衝突判定:ブロック
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^ #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^ #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^ ^ ^0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^ ^ ^-0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^-0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^-0.3 #cronica:no_collision run tag @s add TAG.cronica.GIMMICK.wall_climb.CollisionCheck

## 装飾
# サウンド
execute as @s at @s run playsound minecraft:block.ladder.step player @a ~ ~ ~ 0.3 1

# テレポート
execute as @s[tag=!TAG.cronica.GIMMICK.wall_climb.CollisionCheck] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
tag @s remove TAG.cronica.GIMMICK.wall_climb.CollisionCheck
# =================================================================================================
