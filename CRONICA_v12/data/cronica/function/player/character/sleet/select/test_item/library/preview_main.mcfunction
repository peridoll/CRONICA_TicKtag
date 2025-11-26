# =================================================================================================

#強制終了
execute as @a[tag=TAG.cronica.preview] if score @s SCORE.cronica.CHARACTER.test_item.reset_request matches 100.. run function cronica:player/character/sleet/select/test_item/library/finish
scoreboard players add @a[tag=TAG.cronica.preview] SCORE.cronica.CHARACTER.test_item.reset_request 1

# プレビューの更新
execute as @a[tag=TAG.cronica.preview] at @s run function cronica:player/character/sleet/select/test_item/library/angle_45
execute as @a[tag=TAG.cronica.preview] at @s run function cronica:player/character/sleet/select/test_item/library/preview_tick

# プレビュー対象がいる限りループ継続
execute if entity @a[tag=TAG.cronica.preview] run schedule function cronica:player/character/sleet/select/test_item/library/preview_main 1t

# =================================================================================================
