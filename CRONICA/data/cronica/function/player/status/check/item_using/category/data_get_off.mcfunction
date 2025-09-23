# =================================================================================================

##【 オフハンドデータ取得 】
# オフハンドに持っているアイテムのデータを正規のものとして実行する

#【 データ統合 】
# Valueに使用するデータを格納する
data modify storage cronica:context ItemStatus.Value set from storage cronica:context ItemStatus.Offhand
data modify storage cronica:context ItemCategory.Value set from storage cronica:context ItemCategory.Offhand
data modify storage cronica:context ItemID.Value set from storage cronica:context ItemID.Offhand
data modify storage cronica:context ItemMode.Value set from storage cronica:context ItemMode.Offhand

#【 後続実行 】
# 各カテゴリごとの処理へ分岐する
function cronica:player/status/check/item_using/category/execute_category
# =================================================================================================
