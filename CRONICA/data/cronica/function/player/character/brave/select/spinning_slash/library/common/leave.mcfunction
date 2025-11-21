# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.spinning_slash dummy
      function core:player/character/leave/macro/item_mode { ItemID: "spinning_slash" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.spinning_slash.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "spinning_slash" }
# =================================================================================================
# ver 0.12.0
