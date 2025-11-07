# =================================================================================================

##【 DEVELOP CONFIG 】

    # STORAGE
      # [ Reload ]
      data remove storage cronica:config ApollonBowReload
      data modify storage cronica:config ApollonBowReload.Storage set value "ApollonBowReload"
      data modify storage cronica:config ApollonBowReload.ChargeType set value "Reload"
      data modify storage cronica:config ApollonBowReload.ChargeAddress set value "reload"
      data modify storage cronica:config ApollonBowReload.ChargeConfig set value "ReloadTime"
      data modify storage cronica:config ApollonBowReload.TagCategory set value "WEAPON"
      # < Default >
      data modify storage cronica:config ApollonBowReload.MasterID set value "ikaros"
      data modify storage cronica:config ApollonBowReload.MasterType set value "unique"
      data modify storage cronica:config ApollonBowReload.ItemID set value "apollon_bow"
      # < Display >
      data modify storage cronica:config ApollonBowReload.Display set value "RELOAD"
      data modify storage cronica:config ApollonBowReload.DisplayColor1 set value "dark_green"
      data modify storage cronica:config ApollonBowReload.DisplayColor2 set value "green"
      # < Stack >
      execute store result storage cronica:temp ApollonBowReload.ConfigStack int 1 run \
        scoreboard players get #CONFIG.cronica.INVENTORY.apollon_arrow.Stack SCORE.cronica.CONFIG

      # [ Charge ]
      data remove storage cronica:config ApollonBowCharge
      data modify storage cronica:config ApollonBowCharge.Storage set value "ApollonBowCharge"
      data modify storage cronica:config ApollonBowCharge.ChargeType set value "Charg"
      data modify storage cronica:config ApollonBowCharge.ChargeAddress set value "charge"
      data modify storage cronica:config ApollonBowCharge.ChargeConfig set value "ChargeTime"
      data modify storage cronica:config ApollonBowCharge.TagCategory set value "WEAPON"
      # < Default >
      data modify storage cronica:config ApollonBowCharge.MasterID set value "ikaros"
      data modify storage cronica:config ApollonBowCharge.MasterType set value "unique"
      data modify storage cronica:config ApollonBowCharge.ItemID set value "apollon_bow"
# =================================================================================================
# ver 0.11.0
