# =================================================================================================

##【 DESCRIPTION 】

# 特定のアイテムを入手する際の処理
# コンフィグを読み込むのはこのファイル内で行うため、コンフィグを変更した後は何らかの動作でアイテム入手を行った場合に反映される
#
# アイテムモードの簡易規則
#   1~ : 進化形態/複数個所持状態など、アイテム固有の状態
#   0  : 基本形態
#   -1 : 使用済み/弾薬切れ状態など
#   -2 : 使用不可状態などの状態異常時
#
# =================================================================================================

##【 IMPULSE 】

  ## 準備

    # コンフィグ読み込み
      function cronica:player/character/sleet/config

  ## アイテム入手

    # 水流弾
      function cronica:player/status/common_lib/inventory_load/get \
        { \
          MasterID     : "sleet", \
          MasterType   : "select", \
          ItemID       : "aqua_jet" \
        }
  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.aqua_jet matches 0 run function cronica:player/status/common_lib/item_modify {ItemID: "aqua_jet", Model: "common/skill/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.aqua_jet matches -1 run function cronica:player/status/common_lib/item_modify {ItemID: "aqua_jet", Model: "common/skill/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.aqua_jet matches -2 run function cronica:player/status/common_lib/item_modify {ItemID: "aqua_jet", Model: "common/skill/ban"}

##【 REFRESH 】

  ## スコア管理

    # アイテムモード初期化
      execute if score @s SCORE.cronica.MODE.aqua_jet matches 0 run scoreboard players reset @s SCORE.cronica.MODE.aqua_jet

    # アイテムモード撤去
      execute unless entity @a[scores = {SCORE.cronica.MODE.aqua_jet = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.aqua_jet
# =================================================================================================
# ver 0.10.4
