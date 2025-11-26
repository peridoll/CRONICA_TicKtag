# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.shutdown_flare dummy
      function core:player/character/leave/macro/item_mode { ItemID: "shutdown_flare" }
# =================================================================================================
# ver 0.12.0
