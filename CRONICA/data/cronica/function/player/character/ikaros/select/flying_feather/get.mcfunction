# =================================================================================================

##【 共通処理 】

## キャラクター関連の共通処理を実行
# MasterID   : brave        / ikaros         / etc...
# MasterType : unique       / select         / etc...
# ItemID     : master_sword / flying_feather / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/character_get {MasterID: "ikaros", MasterType: "select", ItemID: "flying_feather", ItemCategory: "select_skill"}
# =================================================================================================

##【 固有処理 】

# 基本形態
execute if score @s SCORE.cronica.MODE.flying_feather matches 0 run function cronica:player/status/common_lib/modify {ItemID: "flying_feather", Model: "common/default", Value:""}

# 使用済み
execute if score @s SCORE.cronica.MODE.flying_feather matches -1 run function cronica:player/status/common_lib/modify {ItemID: "flying_feather", Model: "common/used", Value:""}

# 使用不可
execute if score @s SCORE.cronica.MODE.flying_feather matches -2 run function cronica:player/status/common_lib/modify {ItemID: "flying_feather", Model: "common/ban", Value:""}
# =================================================================================================
