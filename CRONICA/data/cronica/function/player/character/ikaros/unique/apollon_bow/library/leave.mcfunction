# =================================================================================================

##【 DEV CREATE 】

  ## スコア管理

    # ApollonBow:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy

    # ApollonBow:Reload
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reloading dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Goal dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal dummy

    # ApollonBow:Charge
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Charging dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Charg.Goal dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Charg.Stack dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Charg.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Charg.Stack.Goal dummy

    # ApollonArrow:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動速度軽減解除

  ## スコア管理

    # ItemMode
      scoreboard players reset @s SCORE.cronica.MODE.apollon_bow
      scoreboard players reset @s SCORE.cronica.MODE.apollon_arrow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_bow = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_bow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_arrow = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_arrow

    # Reload
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reloading
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Stack
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Reloading

    # Charge
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Charging
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Charg.Goal
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Charg.Stack
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Charg.Stack.Count
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Charg.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Charg.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Charg.Stack
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Charg.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Charg.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Charging
# =================================================================================================
# ver 0.11.0
