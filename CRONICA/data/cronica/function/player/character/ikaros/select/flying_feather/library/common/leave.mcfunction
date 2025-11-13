# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s minecraft:levitation
      effect clear @s minecraft:slow_falling

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.flying_feather dummy
      function core:player/character/leave/macro/item_mode { ItemID: "flying_feather" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.TIMER.flying_feather.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "flying_feather" }

    # 実行時間
      scoreboard players reset @s SCORE.cronica.TIMER.flying_feather.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..}] run \
        scoreboard objectives remove SCORE.cronica.TIMER.flying_feather.ActivateTime
# =================================================================================================
# ver 0.12.0
