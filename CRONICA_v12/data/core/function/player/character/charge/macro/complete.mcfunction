# =================================================================================================

##【 IMPULSE 】

  ## 特定処理実行

    # 特定処理呼び出し
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/$(ChargeType)/complete

  ## 後続処理

    # スコアリセット
      $function core:player/character/charge/macro/reset with storage cronica:config $(ItemID).CustomData.$(ChargeType)
# =================================================================================================
# ver 0.12.0
