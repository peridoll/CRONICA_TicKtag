# =================================================================================================

# アイテム発動処理
execute if score @s[tag = TAG.cronica.preview] SCORE.cronica.STATUS.ItemUsing matches 1 run function cronica:player/character/sleet/select/test_item/library/run
execute if score @s SCORE.cronica.STATUS.ItemUsing matches 1 run function cronica:player/character/sleet/select/test_item/library/preview_start


# =================================================================================================
