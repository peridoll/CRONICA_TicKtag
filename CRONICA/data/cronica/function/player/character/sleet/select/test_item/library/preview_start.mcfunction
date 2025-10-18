# =================================================================================================

tag @s add TAG.cronica.preview
function cronica:player/character/sleet/select/test_item/library/preview_tick

# プレビュー用ループ開始
execute if entity @a[tag=TAG.cronica.preview] run schedule function cronica:player/character/sleet/select/test_item/library/preview_main 1t

# =================================================================================================
