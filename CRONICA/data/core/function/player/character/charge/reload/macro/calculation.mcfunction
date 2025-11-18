# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 目標値
      $scoreboard objectives add SCORE.cronica.WEAPON.$(ItemID).Reload.Goal dummy
      $execute store result score @s SCORE.cronica.WEAPON.$(ItemID).Reload.Goal run \
        data get storage cronica:config $(ItemID).CustomData.Reload.Time
      $execute if score @s SCORE.cronica.WEAPON.$(ItemID).Reload.Goal matches ..9 run \
        scoreboard players set @s SCORE.cronica.WEAPON.$(ItemID).Reload.Goal 10

    # 積算値
      $scoreboard objectives add SCORE.cronica.WEAPON.$(ItemID).Reload.Stack dummy
      $scoreboard objectives add SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Count dummy
      $scoreboard players add @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Count 0

    # 積算目標値
      $scoreboard objectives add SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Goal dummy
      $scoreboard players operation @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Goal = @s SCORE.cronica.WEAPON.$(ItemID).Reload.Goal
      $scoreboard players operation @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Goal /= #10 SCORE.cronica.CONFIG
# =================================================================================================
# ver 0.12.0
