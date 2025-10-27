# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 目標値
      $scoreboard objectives add SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Goal dummy
      $scoreboard players operations @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Goal = #CONFIG.cronica.$(TagCategory).$(ItemID).$(ChargeConfig) SCORE.cronica.CONFIG

    # 積算値
      $scoreboard objectives add SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeConfig).Stack dummy
      $scoreboard objectives add SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeConfig).Stack.Count dummy

    # 積算目標値
      $scoreboard objectives add SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeConfig).Stack.Goal dummy
      $scoreboard players operation @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeConfig).Stack.Goal = @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeConfig).Goal
      $scoreboard players operation @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeConfig).Stack.Goal /= #10 SCORE.cronica.CONFIG
# =================================================================================================
# ver 0.10.4
