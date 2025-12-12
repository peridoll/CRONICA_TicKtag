# # =================================================================================================

# # 丸めた向きを確定
# function cronica:player/character/sleet/select/test_item/library/angle_45

# # 氷壁管理用のマーカーを召喚
# summon minecraft:marker ~ ~ ~ {Tags:["TAG.cronica.test_item.wall","TAG.cronica.test_item.wall.new"]}

# # マーカーに角度と寿命を引き継ぎ
# execute store result score @e[type=minecraft:marker,tag=TAG.cronica.test_item.wall,tag=TAG.cronica.test_item.wall.new,sort=nearest,limit=1] SCORE.cronica.CALC.test_item.Angle45 run scoreboard players get @s SCORE.cronica.CALC.test_item.Angle45
# execute as @e[type=minecraft:marker,tag=TAG.cronica.test_item.wall,tag=TAG.cronica.test_item.wall.new,sort=nearest,limit=1] run scoreboard players set @s SCORE.cronica.CHARACTER.test_item.IceWall 100

# # マーカー基準で氷壁を設置
# execute as @e[type=minecraft:marker,tag=TAG.cronica.test_item.wall,tag=TAG.cronica.test_item.wall.new,sort=nearest,limit=1] at @s run function cronica:player/character/sleet/select/test_item/library/wall_place_router

# # 経過タイマーを起動
# execute if entity @e[type=minecraft:marker,tag=TAG.cronica.test_item.wall] run schedule function cronica:player/character/sleet/select/test_item/library/wall_tick 1t

# # 一時タグを削除
# execute as @e[type=minecraft:marker,tag=TAG.cronica.test_item.wall,tag=TAG.cronica.test_item.wall.new,sort=nearest,limit=1] run tag @s remove TAG.cronica.test_item.wall.new

# # =================================================================================================
