# =================================================================================================

##【 DEV CREATE 】

  ## スコア管理

    # FlyingFeather:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.flying_feather dummy

    # FlyingFeather:Activate
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.Activating dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.Activat.Goal dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.Activat.Stack dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.Activat.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.Activat.Stack.Goal dummy

    # FlyingFeather:CoolTime
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CT dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CT.Goal dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CT.Stack dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CT.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CT.Stack.Goal dummy

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動速度軽減解除

  ## スコア管理

    # ItemMode
      scoreboard players reset @s SCORE.cronica.MODE.flying_feather
      execute unless entity @a[scores = {SCORE.cronica.MODE.flying_feather = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.flying_feather

    # Activat
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.Activating
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.Activat.Goal
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.Activat.Stack
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.Activat.Stack.Count
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.Activat.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.Activat.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.Activat.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.Activat.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.Activat.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.Activating

    # Charge
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.CT
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.CT.Goal
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.CT.Stack
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.CT.Stack.Count
      scoreboard players reset @s SCORE.cronica.SKILL.flying_feather.CT.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.CT.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.CT.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.CT.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.CT.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.flying_feather.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.CT
# =================================================================================================
# ver 0.11.0
