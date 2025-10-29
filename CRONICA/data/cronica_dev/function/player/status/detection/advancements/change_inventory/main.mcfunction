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

##【 REPEAT 】

  # スコア管理
    scoreboard players add @a[scores = {SCORE.cronica_dev.STATUS.ChangeInventory = 0..}] SCORE.cronica_dev.STATUS.ChangeInventory 1

  # 時間到達で完了
    execute \
        as @a[scores = {SCORE.cronica_dev.STATUS.ChangeInventory = 0..}] \
          if score @s SCORE.cronica_dev.STATUS.ChangeInventory >= #CONFIG.cronica_dev.STATUS.ChangeInventory.BOOT_TIME SCORE.cronica_dev.CONFIG \
      run \
        function cronica_dev:player/status/detection/advancements/change_inventory/finish

##【 RETURN 】

  # 再起処理
    execute if entity @a[scores = {SCORE.cronica_dev.STATUS.ChangeInventory = 0..}] run \
      schedule function cronica_dev:player/status/detection/advancements/change_inventory/main 1t
# =================================================================================================
# ver 0.10.3
