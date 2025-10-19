# =================================================================================================

# 向き（ヨー）を45度単位で丸める
scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 0

execute if entity @s[y_rotation=22.5..67.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 45
execute if entity @s[y_rotation=67.5..112.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 90
execute if entity @s[y_rotation=112.5..157.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 135
execute if entity @s[y_rotation=157.5..180] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 180
execute if entity @s[y_rotation=-180..-157.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 180
execute if entity @s[y_rotation=-157.5..-112.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 -135
execute if entity @s[y_rotation=-112.5..-67.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 -90
execute if entity @s[y_rotation=-67.5..-22.5] run scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 -45

# =================================================================================================
