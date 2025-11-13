# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常実行、マクロ、手動実行不可

  ## モデル変更処理

    # インベントリ探索
      $function core:player/inventory/full_execute/func/model_change/macro/run {ItemID: "$(ItemID)", Model: "$(Model)"}

  ## スコア管理

    # アイテムモード初期化
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches 0 run scoreboard players reset @s SCORE.cronica.MODE.$(ItemID)

    # アイテムモード撤去
      $execute unless entity @a[scores = {SCORE.cronica.MODE.$(ItemID) = -99..}] run \
        scoreboard objectives remove SCORE.cronica.MODE.$(ItemID)
# =================================================================================================
# ver 0.12.0
