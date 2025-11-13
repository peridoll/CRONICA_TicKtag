# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.flying_feather_ex dummy
      function core:player/character/leave/macro/item_mode { ItemID: "flying_feather_ex" }
# =================================================================================================
# ver 0.12.0
