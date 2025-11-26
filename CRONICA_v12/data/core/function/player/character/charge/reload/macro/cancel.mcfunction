# =================================================================================================

##【 IMPULSE 】

  ## 画面表示

    # 表示時間設定
      title @s times 0 60 20
      title @s actionbar ""

  ## 後続処理

    # スコアリセット
      $function core:player/character/charge/reload/macro/reset with storage cronica:config $(ItemID).CustomData.Reload
# =================================================================================================
# ver 0.12.0
