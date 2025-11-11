# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 進行度カウントリセット＆加算
      $scoreboard players reset @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack
      $scoreboard players add @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count 1

  ## 画面表示

    # 進行度表示呼び出し
      $function cronica_dev:player/status/common_lib/charge/macro/progress_display with storage cronica_dev:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica_dev:config $(Storage).temp set value "progress"
      $function cronica_dev:player/status/common_lib/charge/macro/activate_func with storage cronica_dev:config $(Storage)
# =================================================================================================
# ver 0.10.4
