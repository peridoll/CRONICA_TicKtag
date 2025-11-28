# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.test_item dummy
      function core:player/character/leave/macro/item_mode { ItemID: "test_item" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.test_item.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "test_item" }
# =================================================================================================
# ver 0.12.0
