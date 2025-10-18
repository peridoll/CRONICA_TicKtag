# =================================================================================================
#
# CRONICA - ADVANCEMENTS USING ITEM DETECTION
#
# grant
# └─ run
#   └─ character_boot
#   └─ other_boot
# |
# main
# └─ finish
#   └─ reset
#
# =================================================================================================

##【 IMPULSE 】

  # アイテム使用時処理
    function cronica:player/status/detection/advancements/using_item/run

##【 REFRESH 】

  # 実績剥奪
  # /* 実績は解除すると一回限りのため、実績で行動検知をする際にはその場で実績を剥奪して再度取得できるようにする */
    advancement revoke @s only cronica:using_item
# =================================================================================================
# ver 0.10.3
