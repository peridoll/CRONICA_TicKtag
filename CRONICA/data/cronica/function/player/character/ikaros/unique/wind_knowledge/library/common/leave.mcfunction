# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s minecraft:levitation
      effect clear @s minecraft:slow_falling

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.wind_knowledge dummy
      function core:player/character/leave/macro/item_mode { ItemID: "wind_knowledge" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.wind_knowledge.CoolTime dummy
      scoreboard objectives add SCORE.cronica.CHARACTER.wind_knowledge.CoolTime.Stack dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "wind_knowledge" }

    # 実行時間
      scoreboard players reset @s SCORE.cronica.SKILL.wind_knowledge.ActivateTime
      scoreboard players reset @s SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0..}] run \
        scoreboard objectives remove SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0..}] run \
        scoreboard objectives remove SCORE.cronica.SKILL.wind_knowledge.ActivateTime
# =================================================================================================
# ver 0.12.0
