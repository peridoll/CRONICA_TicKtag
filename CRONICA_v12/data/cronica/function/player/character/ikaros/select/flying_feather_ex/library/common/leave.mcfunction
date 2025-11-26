# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## プレイヤー管理

    # エフェクト解除
      effect clear @s minecraft:levitation
      effect clear @s minecraft:slow_falling

  ## スコア管理

    # アイテムモード
      scoreboard objectives add SCORE.cronica.MODE.flying_feather_ex dummy
      function core:player/character/leave/macro/item_mode { ItemID: "flying_feather_ex" }

    # クールタイム
      scoreboard objectives add SCORE.cronica.CHARACTER.flying_feather_ex.CoolTime dummy
      function core:player/character/activate/macro/ct/reset { ItemID : "flying_feather_ex" }

    # 実行時間
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather_ex.ActivateTime
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 0..}] run \
        scoreboard objectives remove SCORE.cronica.SKILL.flying_feather_ex.ActivateTime
# =================================================================================================
# ver 0.12.0
