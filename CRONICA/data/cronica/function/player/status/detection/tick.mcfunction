# =================================================================================================

# アイテム使用検知
execute as @a[scores={SCORE.cronica.DETECT.ItemUsing=2..}] run function cronica:player/status/detection/advancements/using_item/main with storage cronica:player/inventory/data Value
# =================================================================================================
