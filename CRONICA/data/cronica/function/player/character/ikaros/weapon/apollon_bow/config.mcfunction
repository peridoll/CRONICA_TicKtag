# =================================================================================================

##【 IMPULSE CONFIG 】
# 一度きり実行すればよい

  ## アイテムコンフィグ定義

    # ストレージリセット
      data remove storage cronica:config apollon_bow.CustomData
      data remove storage cronica:config apollon_arrow.CustomData

    # 太陽神ノ弓

      # ItemID
        data modify storage cronica:config apollon_bow.CustomData.ItemID set value "apollon_bow"

      # 進化時間
        data modify storage cronica:config apollon_bow.CustomData.evolution_Time set value 75

      # リロード時間
        data modify storage cronica:config apollon_bow.CustomData.ReloadTime set value 60

      # 弾薬登録
        data modify storage cronica:config apollon_bow.CustomData.AmmoID set value "apollon_arrow"

    # 太陽神ノ矢

      # ItemID
        data modify storage cronica:config apollon_arrow.CustomData.ItemID set value "apollon_arrow"

      # 基本スタック数
        data modify storage cronica:config apollon_arrow.CustomData.DefaultStack set value 16

  ## ストレージコンフィグ定義

    # リロードコンフィグ
      function core:player/character/charge/reload/macro/setup_storage_config with storage cronica:config apollon_bow.CustomData

    # チャージコンフィグ

      # 進化
        data modify storage cronica:config apollon_bow.CustomData.ChargeType set value "evolution"
        function core:player/character/charge/macro/setup_storage_config with storage cronica:config apollon_bow.CustomData
# =================================================================================================
# ver 0.12.0
