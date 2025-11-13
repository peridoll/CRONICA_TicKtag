# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.over_load dummy
      function core:player/character/leave/macro/item_mode { ItemID: "over_load" }
# =================================================================================================
# ver 0.12.0
