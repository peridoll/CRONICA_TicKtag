# =================================================================================================
#
# CRONICA - ADVANCEMENTS CHANGE INVENTORY DETECTION
#
# grant
# └─ run
#   └─ main
#     └─ finish
#       └─ free_boot
#       └─ reset
#
# =================================================================================================

##【 IMPULSE 】

  # インベントリ更新時処理
    function cronica:player/status/detection/advancements/change_inventory/run

##【 REFRESH 】

  # 実績剥奪
  # /* 実績は解除すると一回限りのため、実績で行動検知をする際にはその場で実績を剥奪して再度取得できるようにする */
    advancement revoke @s only cronica:change_inventory
# =================================================================================================
# ver 0.10.3
