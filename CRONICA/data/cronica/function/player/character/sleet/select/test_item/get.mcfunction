# =================================================================================================

##【 COMMON 】

## キャラクター関連の共通処理を実行
# MasterID     : brave        / sleet         / etc...
# MasterType   : unique       / select         / etc...
# ItemID       : master_sword / flying_feather / etc...
# ItemCategory : main_weapon  / select_skill   / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/macro/get \
  { \
    MasterID     : "sleet", \
    MasterType   : "select", \
    ItemID       : "test_item", \
    ItemCategory : "select_skill" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.flying_feather matches 0 run function cronica:player/status/inventory/model/macro/item_modify {ItemID: "test_item", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.flying_feather matches -1 run function cronica:player/status/inventory/model/macro/item_modify {ItemID: "test_item", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.flying_feather matches -2 run function cronica:player/status/inventory/model/macro/item_modify {ItemID: "test_item", Model: "common/ban"}

##【 REFRESH 】

  ## スコア管理

    # スコア撤去
      # execute if score @s SCORE.cronica.MODE.test_item matches 0 run scoreboard players reset @s SCORE.cronica.MODE.test_item
      # execute unless entity @a[scores = {SCORE.cronica.MODE.test_item = ..-1}] unless entity @a[scores = {SCORE.cronica.MODE.test_item = 0..}] run scoreboard objectives remove SCORE.cronica.MODE.test_item
# =================================================================================================
# ver 0.10.3
