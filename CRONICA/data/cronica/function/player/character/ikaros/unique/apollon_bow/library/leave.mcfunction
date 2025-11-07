# =================================================================================================

##【 DEV CREATE 】

  ## スコア管理

    # ApollonBow:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy

    # ApollonArrow:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy

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

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動速度軽減解除
    # TODO: 実装予定

  ## スコア管理

    # ItemMode
      scoreboard players reset @s SCORE.cronica.MODE.apollon_bow
      scoreboard players reset @s SCORE.cronica.MODE.apollon_arrow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_bow = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_bow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_arrow = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_arrow

    # Reload
      function cronica:player/character/common/macro/leave_lib with storage cronica:config ApollonBowReload
    # Charge
      function cronica:player/character/common/macro/leave_lib with storage cronica:config ApollonBowCharge
# =================================================================================================
# ver 0.11.0
