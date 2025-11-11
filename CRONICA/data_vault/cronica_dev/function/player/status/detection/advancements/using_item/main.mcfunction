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

##【 REPEAT 】

  # 使用終了検知
    execute if entity @s[tag = TAG.cronica_dev.STATUS.ItemUsed] run function cronica_dev:player/status/detection/advancements/using_item/finish
    tag @s[scores = {SCORE.cronica_dev.STATUS.ItemUsing = 0..}] add TAG.cronica_dev.STATUS.ItemUsed
# =================================================================================================
# ver 0.10.3
