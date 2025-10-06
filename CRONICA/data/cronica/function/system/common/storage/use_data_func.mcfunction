# =================================================================================================

# データ取得
function cronica:system/common/storage/get_uuid

# データ結合
$data modify storage cronica:temp/uuid temp_address set value $(func)

# 指定関数実行
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# =================================================================================================
