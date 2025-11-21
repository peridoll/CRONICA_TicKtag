# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.fairy_bottle dummy
      function core:player/character/leave/macro/item_mode { ItemID: "fairy_bottle" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.fairy_bottle.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "fairy_bottle" }
# =================================================================================================
# ver 0.12.0
