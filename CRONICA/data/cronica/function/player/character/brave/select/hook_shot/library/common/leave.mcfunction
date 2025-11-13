# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.hook_shot dummy
      function core:player/character/leave/macro/item_mode { ItemID: "hook_shot" }
# =================================================================================================
# ver 0.12.0
