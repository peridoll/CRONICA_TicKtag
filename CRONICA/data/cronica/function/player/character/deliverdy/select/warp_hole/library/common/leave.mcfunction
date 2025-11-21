# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.warp_hole dummy
      function core:player/character/leave/macro/item_mode { ItemID: "warp_hole" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.warp_hole.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "warp_hole" }
# =================================================================================================
# ver 0.12.0
