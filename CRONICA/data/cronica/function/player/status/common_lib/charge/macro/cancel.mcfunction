# =================================================================================================

##【 IMPULSE 】

  ## 画面表示

    # 表示時間設定
      title @s times 0 60 20
      title @s actionbar ""

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).temp set value "cancel"
      $function cronica:player/status/common_lib/charge/macro/activate_func with storage cronica:config $(Storage)

  ## 後続処理

    # スコアリセット
      $function cronica:player/status/common_lib/charge/macro/reset with storage cronica:config $(Storage)
# =================================================================================================
# ver 0.10.4
