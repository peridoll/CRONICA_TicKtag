# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.tri_strike dummy
      function core:player/character/leave/macro/item_mode { ItemID: "tri_strike" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.tri_strike.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "tri_strike" }
# =================================================================================================
# ver 0.12.0
