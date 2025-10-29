# =================================================================================================

#強制終了
execute as @a[tag=TAG.cronica_dev.preview] if score @s SCORE.cronica_dev.TIMER.test_item.reset_request matches 100.. run function cronica_dev:player/character/sleet/select/test_item/library/finish
scoreboard players add @a[tag=TAG.cronica_dev.preview] SCORE.cronica_dev.TIMER.test_item.reset_request 1

# プレビューの更新
execute as @a[tag=TAG.cronica_dev.preview] at @s run function cronica_dev:player/character/sleet/select/test_item/library/angle_45
execute as @a[tag=TAG.cronica_dev.preview] at @s run function cronica_dev:player/character/sleet/select/test_item/library/preview_tick

# プレビュー対象がいる限りループ継続
execute if entity @a[tag=TAG.cronica_dev.preview] run schedule function cronica_dev:player/character/sleet/select/test_item/library/preview_main 1t

# =================================================================================================
