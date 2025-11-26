# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.shadow_dagger dummy
      function core:player/character/leave/macro/item_mode { ItemID: "shadow_dagger" }
# =================================================================================================
# ver 0.12.0
