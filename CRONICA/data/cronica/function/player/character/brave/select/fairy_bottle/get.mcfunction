# =================================================================================================

##【 共通処理 】

## キャラクター関連の共通処理を実行
# MasterID   : brave        / brave         / etc...
# MasterType : unique       / select         / etc...
# ItemID     : master_sword / fairy_bottle / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/character_get {MasterID: "brave", MasterType: "select", ItemID: "fairy_bottle", ItemCategory: "select_skill"}
# =================================================================================================

##【 固有処理 】

# 基本形態
execute if score @s SCORE.cronica.MODE.fairy_bottle matches 0 run function cronica:player/status/common_lib/modify {ItemID: "fairy_bottle", Model: "common/default", Value:""}

# 使用済み
execute if score @s SCORE.cronica.MODE.fairy_bottle matches -1 run function cronica:player/status/common_lib/modify {ItemID: "fairy_bottle", Model: "common/used", Value:""}

# 使用不可
execute if score @s SCORE.cronica.MODE.fairy_bottle matches -2 run function cronica:player/status/common_lib/modify {ItemID: "fairy_bottle", Model: "common/ban", Value:""}
# =================================================================================================
