# =================================================================================================

##【 COMMON 】

## キャラクター関連の共通処理を実行
# MasterID     : brave        / ikaros         / etc...
# MasterType   : unique       / select         / etc...
# ItemID       : master_sword / flying_feather / etc...

# アイテムを入手する処理を実行
function cronica_dev:player/status/common_lib/macro/get \
  { \
    MasterID     : "ikaros", \
    MasterType   : "select", \
    ItemID       : "blazing_shield" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica_dev.MODE.blazing_shield matches 0 run function cronica_dev:player/status/inventory/model/macro/item_modify {ItemID: "blazing_shield", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica_dev.MODE.blazing_shield matches -1 run function cronica_dev:player/status/inventory/model/macro/item_modify {ItemID: "blazing_shield", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica_dev.MODE.blazing_shield matches -2 run function cronica_dev:player/status/inventory/model/macro/item_modify {ItemID: "blazing_shield", Model: "common/ban"}

##【 REFRESH 】

  ## スコア管理

    # スコア撤去
      execute if score @s SCORE.cronica_dev.MODE.blazing_shield matches 0 run scoreboard players reset @s SCORE.cronica_dev.MODE.blazing_shield
      execute unless entity @a[scores = {SCORE.cronica_dev.MODE.blazing_shield = ..-1}] unless entity @a[scores = {SCORE.cronica_dev.MODE.blazing_shield = 0..}] run scoreboard objectives remove SCORE.cronica_dev.MODE.blazing_shield
# =================================================================================================
# ver 0.10.3
