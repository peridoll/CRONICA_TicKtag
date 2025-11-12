# =================================================================================================

##【 IMPULSE 】

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).Function set value "reset"
      $function cronica:player/character/common/charge/macro/activate_func with storage cronica:config $(Storage)

  ## 状態管理

    # タグ管理
      $tag @s remove TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ed
      $tag @s remove TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing

    # スコア管理
      $function cronica:player/character/common/macro/leave_lib with storage cronica:config $(Storage)
# =================================================================================================
# ver 0.11.0
