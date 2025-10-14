# =================================================================================================

# UUID取得
function cronica:system/common/storage/get_uuid

# 関数実行
$data modify storage cronica:temp/uuid MasterID \
  set value "$(MasterID)"
$data modify storage cronica:temp/uuid MasterType \
  set value "$(MasterType)"
$data modify storage cronica:temp/uuid ItemID \
  set value "$(ItemID)"
$data modify storage cronica:temp/uuid ItemCategory \
  set value "$(ItemCategory)"

function cronica:player/status/inventory/slot/load/main with storage cronica:temp/uuid
# =================================================================================================
