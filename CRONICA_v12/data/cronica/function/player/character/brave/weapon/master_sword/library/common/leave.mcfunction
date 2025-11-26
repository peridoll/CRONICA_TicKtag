# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.master_sword dummy
      function core:player/character/leave/macro/item_mode { ItemID: "master_sword" }
# =================================================================================================
# ver 0.12.0
