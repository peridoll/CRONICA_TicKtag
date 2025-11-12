# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy
        function core:player/character/leave/macro/item_mode { ItemID: "apollon_bow" }
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy
        function core:player/character/leave/macro/item_mode { ItemID: "apollon_arrow" }
# =================================================================================================
# ver 0.12.0
