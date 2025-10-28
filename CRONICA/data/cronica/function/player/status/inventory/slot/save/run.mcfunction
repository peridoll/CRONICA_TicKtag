# =================================================================================================
#
# CRONICA - SLOT SAVE
#
# run
# └─ main
#
# =================================================================================================

##【 IMPULSE 】

    # UUID取得 < SavingSlot.UUIDを取得 >
      function cronica:system/common/storage/uuid/macro/get {StorageName: "SavingSlot"}

  # スコア設置
    scoreboard objectives add SCORE.cronica.STATUS.SavingSlot dummy
    scoreboard players add @s SCORE.cronica.STATUS.SavingSlot 0

  # すべてのスロットを探索して保存を行っていく
    function cronica:player/status/inventory/slot/save/main

##【 REFRESH 】

  # スコア削除
    scoreboard objectives remove SCORE.cronica.STATUS.SavingSlot

  # ストレージ削除
    data remove storage cronica:temp SavingSlot
    data remove storage cronica:temp Storage
# =================================================================================================
# ver 0.10.3
