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
    tag @s remove TAG.cronica.STATUS.ItemUsing.Activated
    tag @s remove TAG.cronica.STATUS.ItemUsing
    tag @s remove TAG.cronica.STATUS.ItemUsed

  # スコア管理
    scoreboard players reset @s SCORE.cronica.STATUS.ItemUsing
    execute unless entity @a[scores = {SCORE.cronica.STATUS.ItemUsing = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsing
# =================================================================================================
# ver 0.10.3
