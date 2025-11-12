# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 進行度カウントリセット＆加算
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack
      $scoreboard players add @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count 1

  ## 画面表示

    # 進行度表示呼び出し
      $function cronica:player/character/common/charge/macro/progress_display with storage cronica:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).Function set value "progress"
      $function cronica:player/character/common/charge/macro/activate_func with storage cronica:config $(Storage)
# =================================================================================================
# ver 0.11.0
