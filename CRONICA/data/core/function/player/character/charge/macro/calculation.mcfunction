# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 目標値
      $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal dummy
      $execute store result score @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal run \
        data get storage cronica:config $(ItemID).CustomData.$(ChargeType).Time
      $execute if score @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal matches ..9 run \
        scoreboard players set @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal 10

    # 積算値
      $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack dummy
      $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Count dummy
      $scoreboard players add @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Count 0

    # 積算目標値
      $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Goal dummy
      $scoreboard players operation @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Goal = @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Goal
      $scoreboard players operation @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Goal /= #10 SCORE.cronica.CONFIG
# =================================================================================================
# ver 0.12.0
