# =================================================================================================

##【 IMPULSE 】

  ## WEAPON

    # SCOREBOARD
      # [ Attack ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.Attack SCORE.cronica.CONFIG 14
      # [ ReloadTime ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ReloadTime SCORE.cronica.CONFIG 60
      # [ ChargeTime ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ChargeTime SCORE.cronica.CONFIG 100

      # [ ApollonArrow:MaxStack ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_arrow.MaxStack SCORE.cronica.CONFIG 8

    # STORAGE
      # [ Reload ]
      data remove storage cronica:config ApollonBowReload
      data modify storage cronica:config ApollonBowReload.Storage set value "ApollonBowReload"
      data modify storage cronica:config ApollonBowReload.ChargeType set value "Reload"
      data modify storage cronica:config ApollonBowReload.ChargeAddress set value "reload"
      data modify storage cronica:config ApollonBowReload.ChargeConfig set value "ReloadTime"
      data modify storage cronica:config ApollonBowReload.Display set value "RELOAD"
      data modify storage cronica:config ApollonBowReload.DisplayColor1 set value "dark_green"
      data modify storage cronica:config ApollonBowReload.DisplayColor2 set value "green"
      data modify storage cronica:config ApollonBowReload.TagCategory set value "WEAPON"
      data modify storage cronica:config ApollonBowReload.MasterID set value "ikaros"
      data modify storage cronica:config ApollonBowReload.MasterType set value "unique"
      data modify storage cronica:config ApollonBowReload.ItemID set value "apollon_bow"
      # [ Charge ]
      data remove storage cronica:config ApollonBowCharge
      data modify storage cronica:config ApollonBowCharge.Storage set value "ApollonBowCharge"
      data modify storage cronica:config ApollonBowCharge.ChargeType set value "Charg"
      data modify storage cronica:config ApollonBowCharge.ChargeAddress set value "charge"
      data modify storage cronica:config ApollonBowCharge.ChargeConfig set value "ChargeTime"
      data modify storage cronica:config ApollonBowCharge.TagCategory set value "WEAPON"
      data modify storage cronica:config ApollonBowCharge.MasterID set value "ikaros"
      data modify storage cronica:config ApollonBowCharge.MasterType set value "unique"
      data modify storage cronica:config ApollonBowCharge.ItemID set value "apollon_bow"
# =================================================================================================
# ver 0.11.0
