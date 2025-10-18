# =================================================================================================

##【 COMMON 】

## キャラクター関連の共通処理を実行
# MasterID     : brave        / ikaros         / etc...
# MasterType   : unique       / select         / etc...
# ItemID       : master_sword / flying_feather / etc...
# ItemCategory : main_weapon  / select_skill   / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/inventory_load/get \
  { \
    MasterID     : "ikaros", \
    MasterType   : "select", \
    ItemID       : "judgment_stone", \
    ItemCategory : "select_skill" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.judgment_stone matches 0 run function cronica:player/status/common_lib/item_modify {ItemID: "judgment_stone", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.judgment_stone matches -1 run function cronica:player/status/common_lib/item_modify {ItemID: "judgment_stone", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.judgment_stone matches -2 run function cronica:player/status/common_lib/item_modify {ItemID: "judgment_stone", Model: "common/ban"}
# =================================================================================================
# ver 0.10.3
