# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.gatling_socket dummy
      function core:player/character/leave/macro/item_mode { ItemID: "gatling_socket" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.gatling_socket.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "gatling_socket" }
# =================================================================================================
# ver 0.12.0
