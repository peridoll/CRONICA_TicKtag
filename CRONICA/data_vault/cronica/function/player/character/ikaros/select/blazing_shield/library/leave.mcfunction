# =================================================================================================

##【 DEV CREATE 】

  ## スコア管理

    # FlyingFeather:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.blazing_shield dummy

    # FlyingFeather:Activate
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.Activating dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.Activat.Goal dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.Activat.Stack dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.Activat.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.Activat.Stack.Goal dummy

    # FlyingFeather:CoolTime
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.CT dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.CT.Goal dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.CT.Stack dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.CT.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.CT.Stack.Goal dummy

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動速度軽減解除

  ## スコア管理

    # ItemMode
      scoreboard players reset @s SCORE.cronica.MODE.blazing_shield
      execute unless entity @a[scores = {SCORE.cronica.MODE.blazing_shield = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.blazing_shield

    # Activat
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.Activating
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.Activat.Goal
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.Activat.Stack
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.Activat.Stack.Count
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.Activat.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.Activat.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.Activat.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.Activat.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.Activat.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.Activating

    # Charge
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.CT
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.CT.Goal
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.CT.Stack
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.CT.Stack.Count
      scoreboard players reset @s SCORE.cronica.SKILL.blazing_shield.CT.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.CT.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.CT.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.CT.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.CT.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.blazing_shield.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.blazing_shield.CT
# =================================================================================================
# ver 0.11.0
