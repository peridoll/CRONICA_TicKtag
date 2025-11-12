# =================================================================================================

##【 IMPULSE 】

  ## SCOREBOARD

    # Attack
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.Attack \
      SCORE.cronica.CONFIG 14

    # ReloadTime
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ReloadTime \
      SCORE.cronica.CONFIG 60

    # ChargeTime
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ChargeTime \
      SCORE.cronica.CONFIG 75

    # ApollonArrow : Stack
      scoreboard players set #CONFIG.cronica.INVENTORY.apollon_arrow.Stack \
      SCORE.cronica.CONFIG 16

  ## STORAGE

    # BasicData
      data remove storage cronica:config ApollonBow
      data modify storage cronica:config ApollonBow.BasicData.MasterID set value "ikaros"
      data modify storage cronica:config ApollonBow.BasicData.MasterType set value "unique"
      data modify storage cronica:config ApollonBow.BasicData.ItemID set value "apollon_bow"

      data modify storage cronica:config ApollonBow.BasicData.Category set value "WEAPON"
# =================================================================================================
# ver 0.11.1
