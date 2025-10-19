# =================================================================================================

# 現在の角度に応じてプレビュー粒子を表示
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches 0 run execute at @s rotated 0 0 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches 45 run execute at @s rotated 0 45 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches 90 run execute at @s rotated 0 90 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches 135 run execute at @s rotated 0 135 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches 180 run execute at @s rotated 0 180 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches -135 run execute at @s rotated 0 -135 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches -90 run execute at @s rotated 0 -90 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view
execute if score @s SCORE.cronica.CALC.test_item.Angle45 matches -45 run execute at @s rotated 0 -45 run function cronica:player/character/sleet/select/test_item/library/preview_particles_view

# =================================================================================================
