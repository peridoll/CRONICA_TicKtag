# =================================================================================================

##【 共通処理 】

## キャラクター関連の共通処理を実行
# MasterID    : brave        / ikaros         / etc...
# MasterType  : unique       / select         / etc...
# ItemID      : master_sword / flying_feather / etc...
# ItemCategory: main_weapon  / select_skill   / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/character_get {MasterID: "ikaros", MasterType: "unique", ItemID: "apollon_bow", ItemCategory: "main_weapon"}
function cronica:player/status/common_lib/character_get {MasterID: "ikaros", MasterType: "unique", ItemID: "apollon_arrow", ItemCategory: "ammo"}
# =================================================================================================

##【 固有処理 】

# 基本形態
execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run function cronica:player/status/common_lib/modify {ItemID: "apollon_bow", Model: "common/default", Value:""}
execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run function cronica:player/status/common_lib/modify {ItemID: "apollon_arrow", Model: "common/default", Value:""}
# =================================================================================================
