# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy
      function core:player/character/leave/macro/item_mode { ItemID: "apollon_bow" }
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy
      function core:player/character/leave/macro/item_mode { ItemID: "apollon_arrow" }

    # リロード管理
      function core:player/character/charge/reload/macro/leave { ItemID : "apollon_bow" }

    # チャージ管理

      # 進化処理
        function core:player/character/charge/macro/reset with storage cronica:config apollon_bow.CustomData.evolution
# =================================================================================================
# ver 0.12.0
