# =================================================================================================

##【 共通処理 】

## キャラクター関連の共通処理を実行
# MasterID   : brave        / ikaros         / etc...
# MasterType : unique       / select         / etc...
# ItemID     : master_sword / flying_feather / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/character_get {MasterID: "ikaros", MasterType: "unique", ItemID: "shutdown_flare"}
# =================================================================================================

##【 固有処理 】

# 基本形態
execute if score @s SCORE.cronica.MODE.shutdown_flare matches 0 run function cronica:player/status/common_lib/modify {ItemID: "shutdown_flare", Model: "common/default", Value:""}
# =================================================================================================
