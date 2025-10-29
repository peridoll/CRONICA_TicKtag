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

##【 REFRESH 】

  # タイマーリセット
    scoreboard players reset @s SCORE.cronica_dev.STATUS.ChangeInventory
    execute unless entity @a[scores = {SCORE.cronica_dev.STATUS.ChangeInventory = 0..}] run scoreboard objectives remove SCORE.cronica_dev.STATUS.ChangeInventory
# =================================================================================================
# ver 0.10.3
