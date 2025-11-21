# =================================================================================================

#スコア、タグ設置
tag @s add TAG.cronica.preview
scoreboard objectives add SCORE.cronica.CALC.test_item.Angle45 dummy
scoreboard objectives add SCORE.cronica.CHARACTER.test_item.reset_request dummy
scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 0
scoreboard players set @s SCORE.cronica.CHARACTER.test_item.reset_request 0

execute if entity @a[tag=TAG.cronica.preview] run function cronica:player/character/sleet/select/test_item/library/preview_main

# =================================================================================================
