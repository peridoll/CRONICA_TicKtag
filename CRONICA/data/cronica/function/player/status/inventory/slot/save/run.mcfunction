# =================================================================================================
#
# CRONICA - SLOT SAVE
#
# run
# └─ main
#
# =================================================================================================

##【 IMPULSE 】

  # ストレージ初期化
    data remove storage cronica:temp SavingSlot
    data modify storage cronica:temp Storage set value "SavingSlot"

  # UUID取得
    function cronica:system/common/storage/get_uuid
    function cronica:system/common/storage/set_uuid with storage cronica:temp

  # スコア設置
    scoreboard objectives add SCORE.cronica.STATUS.SavingSlot dummy
    scoreboard players add @s SCORE.cronica.STATUS.SavingSlot 0

  # すべてのスロットを探索して保存を行っていく
    function cronica:player/status/inventory/slot/save/main

##【 REFRESH 】

  # ストレージ削除
    data remove storage cronica:temp SavingSlot
    data remove storage cronica:temp Storage
# =================================================================================================
# ver 0.10.3
