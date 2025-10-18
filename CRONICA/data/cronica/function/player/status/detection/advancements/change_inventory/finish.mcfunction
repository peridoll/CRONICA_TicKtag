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
# インベントリ更新の検知では、場所１から場所２へアイテムが移動した際に離れたことも検知してしまい、二重処理で負荷の原因にもなるので
# 発動に特定秒数のラグを設けることで、負荷の軽減を図る
# =================================================================================================

##【 IMPULSE 】

  # 所持アイテムの格納先の保存
    execute if entity @s[tag = TAG.cronica.GAMING] run function cronica:player/status/inventory/slot/save/run

##【 REFRESH 】

  # スコアリセット
    function cronica:player/status/detection/advancements/change_inventory/reset
# =================================================================================================
# ver 0.10.3
