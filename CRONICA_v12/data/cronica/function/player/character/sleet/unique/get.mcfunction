# =================================================================================================

##【 IMPULSE 】

  ## RESET

    # Weapon
      function core:player/inventory/full_execute/func/clear_item/macro/run {TargetType : "MasterType", TargetID : "weapon" }

    # Unique
      function core:player/inventory/full_execute/func/clear_item/macro/run {TargetType : "MasterType", TargetID : "unique" }

  ## WEAPON

    # Blizzard Lance
      execute if predicate core:is_sneaking run function cronica:player/character/sleet/weapon/blizzard_lance/get

    # Wave Lance
      execute unless predicate core:is_sneaking run function cronica:player/character/sleet/weapon/wave_lance/get

  ## SKILL

    # Thermal Conversion
      function cronica:player/character/sleet/unique/thermal_conversion/get

    # Over Load
      function cronica:player/character/sleet/unique/over_load/get
# =================================================================================================
# ver 0.12.0
