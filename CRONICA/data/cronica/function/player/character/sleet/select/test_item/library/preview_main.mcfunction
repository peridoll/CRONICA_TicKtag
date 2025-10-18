# =================================================================================================

# プレビューの更新
execute as @a[tag=TAG.cronica.preview] at @s run function cronica:player/character/sleet/select/test_item/library/preview_tick

# プレビュー対象がいる限りループ継続
execute if entity @a[tag=TAG.cronica.preview] run schedule function cronica:player/character/sleet/select/test_item/library/preview_main 1t

# =================================================================================================
