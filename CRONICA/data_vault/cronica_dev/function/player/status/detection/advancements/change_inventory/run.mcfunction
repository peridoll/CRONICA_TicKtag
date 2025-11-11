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

  ## セットアップ

    # タイマー設置
      scoreboard objectives add SCORE.cronica_dev.STATUS.ChangeInventory dummy
      scoreboard players set @s SCORE.cronica_dev.STATUS.ChangeInventory 0

    # 時間設定
    # /* ここの数字を変えると、インベントリ更新後、何秒経過で情報を修正するか設定できる (1s = 20tick) */
      scoreboard players set #CONFIG.cronica_dev.STATUS.ChangeInventory.BOOT_TIME SCORE.cronica_dev.CONFIG 100
      execute if entity @s[tag = dev] run scoreboard players set #CONFIG.cronica_dev.STATUS.ChangeInventory.BOOT_TIME SCORE.cronica_dev.CONFIG 2

  ## 後続処理

    # ループするメインの機構を呼び出し
      schedule function cronica_dev:player/status/detection/advancements/change_inventory/main 1t
# =================================================================================================
# ver 0.10.3
