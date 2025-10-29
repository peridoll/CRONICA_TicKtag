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

##【 REFRESH 】

  # タグ管理
    tag @s remove TAG.cronica_dev.STATUS.ItemUsing
    tag @s remove TAG.cronica_dev.STATUS.ItemUsed

  # スコア管理
    scoreboard players reset @s SCORE.cronica_dev.STATUS.ItemUsing
    execute unless entity @a[scores = {SCORE.cronica_dev.STATUS.ItemUsing = 0..}] run scoreboard objectives remove SCORE.cronica_dev.STATUS.ItemUsing
# =================================================================================================
# ver 0.10.3
