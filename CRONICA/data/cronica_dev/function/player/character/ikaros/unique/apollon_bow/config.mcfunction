# =================================================================================================

##【 IMPULSE 】

  ## WEAPON

    # SCOREBOARD
      # [ Attack ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.Attack SCORE.cronica_dev.CONFIG 14
      # [ ReloadTime ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.ReloadTime SCORE.cronica_dev.CONFIG 60
      # [ ChargeTime ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.ChargeTime SCORE.cronica_dev.CONFIG 100

      # [ ApollonArrow:MaxStack ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_arrow.MaxStack SCORE.cronica_dev.CONFIG 8

    # STORAGE
      # [ Reload ]
      data remove storage cronica_dev:config ApollonBowReload
      data modify storage cronica_dev:config ApollonBowReload.Storage set value "ApollonBowReload"
      data modify storage cronica_dev:config ApollonBowReload.ChargeType set value "Reload"
      data modify storage cronica_dev:config ApollonBowReload.ChargeAddress set value "reload"
      data modify storage cronica_dev:config ApollonBowReload.ChargeConfig set value "ReloadTime"
      data modify storage cronica_dev:config ApollonBowReload.Display set value "RELOAD"
      data modify storage cronica_dev:config ApollonBowReload.DisplayColor1 set value "dark_green"
      data modify storage cronica_dev:config ApollonBowReload.DisplayColor2 set value "green"
      data modify storage cronica_dev:config ApollonBowReload.TagCategory set value "WEAPON"
      data modify storage cronica_dev:config ApollonBowReload.MasterID set value "ikaros"
      data modify storage cronica_dev:config ApollonBowReload.MasterType set value "unique"
      data modify storage cronica_dev:config ApollonBowReload.ItemID set value "apollon_bow"
      # [ Charge ]
      data remove storage cronica_dev:config ApollonBowCharge
      data modify storage cronica_dev:config ApollonBowCharge.Storage set value "ApollonBowCharge"
      data modify storage cronica_dev:config ApollonBowCharge.ChargeType set value "Charg"
      data modify storage cronica_dev:config ApollonBowCharge.ChargeAddress set value "charge"
      data modify storage cronica_dev:config ApollonBowCharge.ChargeConfig set value "ChargeTime"
      data modify storage cronica_dev:config ApollonBowCharge.TagCategory set value "WEAPON"
      data modify storage cronica_dev:config ApollonBowCharge.MasterID set value "ikaros"
      data modify storage cronica_dev:config ApollonBowCharge.MasterType set value "unique"
      data modify storage cronica_dev:config ApollonBowCharge.ItemID set value "apollon_bow"
# =================================================================================================

##【 DEV STORAGE 】

  ## UNIQUE

    # ApollonBow
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.apollon_bow dummy
      # [ Reload ]
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reloading dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Goal dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Stack dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Stack.Count dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Stack.Goal dummy
      # [ Charge ]
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Charging dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Charge.Goal dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Charge.Stack dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Charge.Stack.Count dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Charge.Stack.Goal dummy
    # ApollonArrow
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.apollon_arrow dummy
# =================================================================================================
# ver 0.10.4
