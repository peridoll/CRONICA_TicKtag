# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## タグ消し

    # 進化用タグ
      tag @s remove TAG.cronica.WEAPON.apollon_bow.EVOLVED

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.begin_twilight dummy
      function core:player/character/leave/macro/item_mode { ItemID: "begin_twilight" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.begin_twilight.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "begin_twilight" }
# =================================================================================================
# ver 0.12.0
