# =================================================================================================

##【 COMMON 】

## キャラクター関連の共通処理を実行
# MasterID     : brave        / sleet         / etc...
# MasterType   : unique       / select         / etc...
# ItemID       : master_sword / aqua_jet / etc...

# アイテムを入手する処理を実行
function cronica:player/status/common_lib/inventory_load/get \
  { \
    MasterID     : "sleet", \
    MasterType   : "select", \
    ItemID       : "aqua_jet" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.aqua_jet matches 0 run function cronica:player/status/common_lib/item_modify {ItemID: "aqua_jet", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.aqua_jet matches -1 run function cronica:player/status/common_lib/item_modify {ItemID: "aqua_jet", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.aqua_jet matches -2 run function cronica:player/status/common_lib/item_modify {ItemID: "aqua_jet", Model: "common/ban"}

##【 REFRESH 】

  ## スコア管理

    # スコア撤去
      execute if score @s SCORE.cronica.MODE.aqua_jet matches 0 run scoreboard players reset @s SCORE.cronica.MODE.aqua_jet
      execute unless entity @a[scores = {SCORE.cronica.MODE.aqua_jet = ..-1}] unless entity @a[scores = {SCORE.cronica.MODE.aqua_jet = 0..}] run scoreboard objectives remove SCORE.cronica.MODE.aqua_jet
# =================================================================================================
# ver 0.10.3
