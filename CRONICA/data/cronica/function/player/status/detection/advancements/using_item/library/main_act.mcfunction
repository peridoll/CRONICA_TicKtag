# =================================================================================================

# # データ取得
# function cronica:player/status/inventory/data/save

# # 後続実行
# function cronica:player/status/detection/advancements/using_item/library/main_act_2 with storage cronica:temp/uuid

# 後続呼び出し
# $function cronica:player/character/$(MasterID)/boot/using_item {MasterID:$(MasterID),MasterType:$(MasterType),ItemID:$(ItemID),ItemStatus:$(ItemStatus),ItemMode:$(ItemMode),Hand:$(Hand)}
# =================================================================================================
