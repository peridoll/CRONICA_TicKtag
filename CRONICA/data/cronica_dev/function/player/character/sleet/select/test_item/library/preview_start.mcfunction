# =================================================================================================
#スコア、タグ設置
tag @s add TAG.cronica_dev.preview
scoreboard objectives add SCORE.cronica_dev.CALC.test_item.Angle45 dummy
scoreboard objectives add SCORE.cronica_dev.TIMER.test_item.reset_request dummy
scoreboard players set @s SCORE.cronica_dev.CALC.test_item.Angle45 0
scoreboard players set @s SCORE.cronica_dev.TIMER.test_item.reset_request 0

execute if entity @a[tag=TAG.cronica_dev.preview] run function cronica_dev:player/character/sleet/select/test_item/library/preview_main
# =================================================================================================
