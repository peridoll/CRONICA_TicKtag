# =================================================================================================

##【 IMPULSE 】

  ## 画面表示

    # コンプリート表示
      $function cronica:player/character/common/charge/macro/complete_display with storage cronica:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).Function set value "complete"
      $function cronica:player/character/common/charge/macro/activate_func with storage cronica:config $(Storage)

  ## 後続処理

    # スコアリセット
      $function cronica:player/character/common/charge/macro/reset with storage cronica:config $(Storage)
# =================================================================================================
# ver 0.11.0
