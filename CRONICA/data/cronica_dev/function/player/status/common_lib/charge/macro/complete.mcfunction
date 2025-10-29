# =================================================================================================

##【 IMPULSE 】

  ## 画面表示

    # コンプリート表示
      $function cronica_dev:player/status/common_lib/charge/macro/complete_display with storage cronica_dev:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica_dev:config $(Storage).temp set value "complete"
      $function cronica_dev:player/status/common_lib/charge/macro/activate_func with storage cronica_dev:config $(Storage)

  ## 後続処理

    # スコアリセット
      $function cronica_dev:player/status/common_lib/charge/macro/reset with storage cronica_dev:config $(Storage)
# =================================================================================================
# ver 0.10.4
