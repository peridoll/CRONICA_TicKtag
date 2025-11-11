# =================================================================================================

##【 DEV CREATE 】

  ## スコア管理

    # FlyingFeather:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.judgment_stone dummy

    # FlyingFeather:Activate
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.Activating dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.Activat.Goal dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.Activat.Stack dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.Activat.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.Activat.Stack.Goal dummy

    # FlyingFeather:CoolTime
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.CT dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.CT.Goal dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.CT.Stack dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.CT.Stack.Count dummy
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.CT.Stack.Goal dummy

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動速度軽減解除

  ## スコア管理

    # ItemMode
      scoreboard players reset @s SCORE.cronica.MODE.judgment_stone
      execute unless entity @a[scores = {SCORE.cronica.MODE.judgment_stone = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.judgment_stone

    # Activat
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.Activating
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.Activat.Goal
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.Activat.Stack
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.Activat.Stack.Count
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.Activat.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.Activat.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.Activat.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.Activat.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.Activat.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.Activating = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.Activating

    # Charge
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.CT
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.CT.Goal
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.CT.Stack
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.CT.Stack.Count
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.CT.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.CT.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.CT.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.CT.Stack.Count
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.CT.Stack.Goal
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.CT = 0..}] run scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.CT
# =================================================================================================
# ver 0.11.0
