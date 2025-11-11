# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # スコア削除
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Goal
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Goal
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Goal
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing
# =================================================================================================
# ver 0.11.0
