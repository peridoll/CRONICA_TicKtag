# =================================================================================================

# アイテム発動処理
execute if score @s[tag = TAG.cronica_dev.preview] SCORE.cronica_dev.STATUS.ItemUsing matches 1 run function cronica_dev:player/character/sleet/select/test_item/library/run
execute if score @s SCORE.cronica_dev.STATUS.ItemUsing matches 1 run function cronica_dev:player/character/sleet/select/test_item/library/preview_start


# =================================================================================================
