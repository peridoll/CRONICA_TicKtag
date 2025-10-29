# =================================================================================================

# 丸めた向きを確定
function cronica_dev:player/character/sleet/select/test_item/library/angle_45

# 氷壁管理用のマーカーを召喚
summon minecraft:marker ~ ~ ~ {Tags:["TAG.cronica_dev.test_item.wall","TAG.cronica_dev.test_item.wall.new"]}

# マーカーに角度と寿命を引き継ぎ
execute store result score @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall,tag=TAG.cronica_dev.test_item.wall.new,sort=nearest,limit=1] SCORE.cronica_dev.CALC.test_item.Angle45 run scoreboard players get @s SCORE.cronica_dev.CALC.test_item.Angle45
execute as @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall,tag=TAG.cronica_dev.test_item.wall.new,sort=nearest,limit=1] run scoreboard players set @s SCORE.cronica_dev.TIMER.test_item.IceWall 100

# マーカー基準で氷壁を設置
execute as @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall,tag=TAG.cronica_dev.test_item.wall.new,sort=nearest,limit=1] at @s run function cronica_dev:player/character/sleet/select/test_item/library/wall_place_router

# 経過タイマーを起動
execute if entity @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall] run schedule function cronica_dev:player/character/sleet/select/test_item/library/wall_tick 1t

# 一時タグを削除
execute as @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall,tag=TAG.cronica_dev.test_item.wall.new,sort=nearest,limit=1] run tag @s remove TAG.cronica_dev.test_item.wall.new

# =================================================================================================
