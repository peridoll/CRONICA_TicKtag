# =================================================================================================

##【 IMPULSE 】

  ## 特定処理実行

    # 特定処理呼び出し
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/$(ChargeType)/reset

  ## 状態管理

    # タグ管理
      $tag @s remove TAG.cronica.CHARACTER.$(ItemID).$(ChargeType)ed
      $tag @s remove TAG.cronica.CHARACTER.$(ItemID).$(ChargeType)ing

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Goal
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Count
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Count
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing
# =================================================================================================
# ver 0.12.0
