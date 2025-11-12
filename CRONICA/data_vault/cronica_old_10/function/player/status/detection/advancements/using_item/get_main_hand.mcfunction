# =================================================================================================
#
# CRONICA - ADVANCEMENTS USING ITEM DETECTION
#
# grant
# └─ run
#   └─ get_main_hand
#   └─ get_off_hand
#   └─ character_boot
#   └─ other_boot
# |
# main
# └─ finish
#   └─ reset
#
# =================================================================================================

##【 IMPULSE 】

  # データ取得
    data modify storage cronica_dev:temp ItemUsing.MasterID set from entity @s SelectedItem.components."minecraft:custom_data".MasterID
    data modify storage cronica_dev:temp ItemUsing.MasterType set from entity @s SelectedItem.components."minecraft:custom_data".MasterType
    data modify storage cronica_dev:temp ItemUsing.ItemCategory set from entity @s SelectedItem.components."minecraft:custom_data".ItemCategory
    data modify storage cronica_dev:temp ItemUsing.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
    data modify storage cronica_dev:temp ItemUsing.ItemMode set from entity @s SelectedItem.components."minecraft:custom_data".ItemMode
    data modify storage cronica_dev:temp ItemUsing.ItemStatus set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
# =================================================================================================
# ver 0.10.3
