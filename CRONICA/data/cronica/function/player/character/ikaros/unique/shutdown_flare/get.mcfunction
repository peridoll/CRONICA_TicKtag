# =================================================================================================

##【 COMMON 】

## キャラクター関連の共通処理を実行
# MasterID     : brave        / ikaros         / etc...
# MasterType   : unique       / select         / etc...
# ItemID       : master_sword / flying_feather / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/inventory_load/get \
  { \
    MasterID     : "ikaros", \
    MasterType   : "unique", \
    ItemID       : "shutdown_flare" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.shutdown_flare matches 0 run function cronica:player/status/common_lib/item_modify {ItemID: "shutdown_flare", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.shutdown_flare matches -1 run function cronica:player/status/common_lib/item_modify {ItemID: "shutdown_flare", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.shutdown_flare matches -2 run function cronica:player/status/common_lib/item_modify {ItemID: "shutdown_flare", Model: "common/ban"}
# =================================================================================================
# ver 0.10.3
