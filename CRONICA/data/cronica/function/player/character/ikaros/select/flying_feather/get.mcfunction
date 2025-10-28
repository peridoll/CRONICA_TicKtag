# =================================================================================================

##【 COMMON 】

## キャラクター関連の共通処理を実行
# MasterID     : brave        / ikaros         / etc...
# MasterType   : unique       / select         / etc...
# ItemID       : master_sword / flying_feather / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/macro/get \
  { \
    MasterID     : "ikaros", \
    MasterType   : "select", \
    ItemID       : "flying_feather" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.flying_feather matches 0 run function cronica:player/status/inventory/model/macro/item_modify {ItemID: "flying_feather", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.flying_feather matches -1 run function cronica:player/status/inventory/model/macro/item_modify {ItemID: "flying_feather", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.flying_feather matches -2 run function cronica:player/status/inventory/model/macro/item_modify {ItemID: "flying_feather", Model: "common/ban"}

##【 REFRESH 】

  ## スコア管理

    # スコア撤去
      execute if score @s SCORE.cronica.MODE.flying_feather matches 0 run scoreboard players reset @s SCORE.cronica.MODE.flying_feather
      execute unless entity @a[scores = {SCORE.cronica.MODE.flying_feather = ..-1}] unless entity @a[scores = {SCORE.cronica.MODE.flying_feather = 0..}] run scoreboard objectives remove SCORE.cronica.MODE.flying_feather
# =================================================================================================
# ver 0.10.3
