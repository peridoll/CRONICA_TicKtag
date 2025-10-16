# =================================================================================================

##【 起動処理 】

# ストレージ初期化
data remove storage cronica:temp LoadingSlot
data modify storage cronica:temp Storage set value "LoadingSlot"

# UUID取得
function cronica:system/common/storage/get_uuid
function cronica:system/common/storage/set_uuid with storage cronica:temp

# 関数実行
$data modify storage cronica:temp LoadingSlot.MasterID \
  set value "$(MasterID)"
$data modify storage cronica:temp LoadingSlot.MasterType \
  set value "$(MasterType)"
$data modify storage cronica:temp LoadingSlot.ItemID \
  set value "$(ItemID)"
$data modify storage cronica:temp LoadingSlot.ItemCategory \
  set value "$(ItemCategory)"

function cronica:player/status/inventory/slot/load/main with storage cronica:temp LoadingSlot

##【 状態回復 】

# ストレージ削除
data remove storage cronica:temp LoadingSlot
data remove storage cronica:temp Storage
# =================================================================================================
