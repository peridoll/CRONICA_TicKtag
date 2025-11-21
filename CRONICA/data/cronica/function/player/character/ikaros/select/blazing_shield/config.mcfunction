# =================================================================================================

##【 IMPULSE CONFIG 】
# 一度きり実行すればよい

  ## アイテムコンフィグ定義

    # クールタイム
      data modify storage cronica:config blazing_shield.CustomData.CoolTime set value 240

    # チャージタイム
      data modify storage cronica:config blazing_shield.CustomData.charge_Time set value 80

  ## ストレージコンフィグ定義

    # チャージコンフィグ

      # チャージ
        data modify storage cronica:config blazing_shield.CustomData.ChargeType set value "charge"
        function core:player/character/charge/macro/setup_storage_config with storage cronica:config blazing_shield.CustomData
# =================================================================================================
# ver 0.12.0
