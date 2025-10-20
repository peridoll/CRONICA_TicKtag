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
    ItemID       : "apollon_bow" \
  }
function cronica:player/status/common_lib/inventory_load/get \
  { \
    MasterID     : "ikaros", \
    MasterType   : "unique", \
    ItemID       : "apollon_arrow" \
  }
# =================================================================================================

##【 IMPULSE 】

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run function cronica:player/status/common_lib/item_modify {ItemID: "apollon_bow", Model: "common/default"}
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run function cronica:player/status/common_lib/item_modify {ItemID: "apollon_arrow", Model: "common/default"}

    # 弾薬表示
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 1 run function cronica:player/status/common_lib/item_modify {ItemID: "apollon_arrow", Model: "common/ammo/one"}
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches -1 run function cronica:player/status/common_lib/item_modify {ItemID: "apollon_arrow", Model: "common/ammo/zero"}

  ## 機能検知

    # リロード待機
      schedule function cronica:player/character/ikaros/unique/apollon_bow/library/main 1t

##【 REFRESH 】

  ## スコア管理

    # スコア撤去
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run scoreboard players reset @s SCORE.cronica.MODE.apollon_bow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_bow = ..-1}] unless entity @a[scores = {SCORE.cronica.MODE.apollon_bow = 0..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_bow
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run scoreboard players reset @s SCORE.cronica.MODE.apollon_arrow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_arrow = ..-1}] unless entity @a[scores = {SCORE.cronica.MODE.apollon_arrow = 0..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_arrow
# =================================================================================================
# ver 0.10.3
