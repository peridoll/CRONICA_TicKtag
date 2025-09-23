# =================================================================================================

##【 メインハンドデータ取得 】
# メインハンドに持っているアイテムのデータを正規のものとして実行する

#【 データ統合 】
# Valueに使用するデータを格納する
data modify storage cronica:context ItemStatus.Value set from storage cronica:context ItemStatus.Mainhand
data modify storage cronica:context ItemCategory.Value set from storage cronica:context ItemCategory.Mainhand
data modify storage cronica:context ItemID.Value set from storage cronica:context ItemID.Mainhand
data modify storage cronica:context ItemMode.Value set from storage cronica:context ItemMode.Mainhand

#【 後続実行 】
# 各カテゴリごとの処理へ分岐する
function cronica:player/status/check/sneaking/category/execute_category
# =================================================================================================
