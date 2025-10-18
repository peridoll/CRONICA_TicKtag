# =================================================================================================

##【 IMPULSE 】

  # ストレージ初期化
    data modify storage cronica:temp Storage set value "GetInventory"

  # UUID取得
    function cronica:system/common/storage/get_uuid
    function cronica:system/common/storage/set_uuid with storage cronica:temp

  # アイテム取得
    function cronica:player/status/inventory/slot/load/main with storage cronica:temp GetInventory

##【 REFRESH 】

  # ストレージ削除
    data remove storage cronica:temp Storage
# =================================================================================================
# ver 0.10.3
