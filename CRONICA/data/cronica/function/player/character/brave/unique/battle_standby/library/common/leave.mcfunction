# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.battle_standby dummy
      function core:player/character/leave/macro/item_mode { ItemID: "battle_standby" }
# =================================================================================================
# ver 0.12.0
