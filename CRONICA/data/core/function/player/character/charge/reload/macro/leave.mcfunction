# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.WEAPON.$(ItemID).Reloading
      $scoreboard players reset @s SCORE.cronica.WEAPON.$(ItemID).Reload.Goal
      $scoreboard players reset @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack
      $scoreboard players reset @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Goal
      $scoreboard players reset @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Count
      $execute unless entity @a[ scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.$(ItemID).Reload.Goal
      $execute unless entity @a[ scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.$(ItemID).Reload.Stack
      $execute unless entity @a[ scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Goal
      $execute unless entity @a[ scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Count
      $execute unless entity @a[ scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 0..} ] run scoreboard objectives remove SCORE.cronica.WEAPON.$(ItemID).Reloading
# =================================================================================================
# ver 0.12.0
