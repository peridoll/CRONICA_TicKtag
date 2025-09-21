## アクションパネル
execute as @a[tag=TAG.cronica.GAMING] at @s if block ~ ~-0.1 ~ lime_shulker_box run function cronica:stage/gimmick/panel/jump/run

## ケアパッケージ
# execute if entity @e[tag=TAG.cronica.MARKER.CarePackage] run schedule function cronica:stage/gimmick/carepackage/library/decolation 1t
# execute as @a[tag=TAG.cronica.GAMING,tag=TAG.cronica.STATUS.Sneaking] at @s unless block ~ ~-0.1 ~ air if entity @e[tag=TAG.cronica.MARKER.CarePackage,distance=..2] run function cronica:stage/gimmick/carepackage/library/charge

## フェンス乗り越え
execute as @a[tag=TAG.cronica.GAMING,tag=TAG.cronica.STATUS.Sneaking] at @s rotated ~ 0 if block ~ ~ ~ #cronica:fence if block ~ ~1 ~ #cronica:no_collision run function cronica:stage/gimmick/wall_climb/charge