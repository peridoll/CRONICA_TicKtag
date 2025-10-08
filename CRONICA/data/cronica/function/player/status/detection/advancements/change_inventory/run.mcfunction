# =================================================================================================

# 所持アイテム情報更新
function cronica:player/status/inventory/data/save

# 能力呼び出し：実行時
function cronica:player/status/detection/boot/change_inventory

# 実績解除
advancement revoke @s only cronica:change_inventory
# =================================================================================================
