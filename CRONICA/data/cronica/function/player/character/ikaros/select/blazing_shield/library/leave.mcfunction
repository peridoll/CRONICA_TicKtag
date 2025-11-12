# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.blazing_shield dummy
        function core:player/character/leave/macro/item_mode { ItemID: "blazing_shield" }
# =================================================================================================
# ver 0.12.0
