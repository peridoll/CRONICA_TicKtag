# =================================================================================================

execute as @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall] at @s run function cronica_dev:player/character/sleet/select/test_item/library/wall_tick_each
execute if entity @e[type=minecraft:marker,tag=TAG.cronica_dev.test_item.wall] run schedule function cronica_dev:player/character/sleet/select/test_item/library/wall_tick 1t

# =================================================================================================
