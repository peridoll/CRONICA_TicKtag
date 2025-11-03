# =================================================================================================

##【 INPULSE 】

  ## モデル変更処理

    # インベントリ探索
        $function cronica:player/inventory/full_execute/func/model_change/macro/run {ItemID: "$(ItemID)", Model: "$(Model)"}

##【 REFRESH 】

  ## スコア管理

    # アイテムモード初期化
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches 0 run scoreboard players reset @s SCORE.cronica.MODE.$(ItemID)

    # アイテムモード撤去
      $execute unless entity @a[scores = {SCORE.cronica.MODE.$(ItemID) = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.$(ItemID)
# =================================================================================================
# ver 0.11.0
