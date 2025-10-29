# =================================================================================================

##【 IMPULSE 】

  ## UNIQUE

    # ApollonBow
      # [ Attack ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.Attack SCORE.cronica_dev.CONFIG 14
      # [ ReloadTime ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.ReloadTime SCORE.cronica_dev.CONFIG 60
      # [ ChargeTime ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.ChargeTime SCORE.cronica_dev.CONFIG 100

    # Storage
      # [ Reload ]
      data remove storage cronica_dev:config ApollonBowReload
      data modify storage cronica_dev:config ApollonBowReload.Storage set value "ApollonBowReload"
      data modify storage cronica_dev:config ApollonBowReload.ChargeType set value "Reload"
      data modify storage cronica_dev:config ApollonBowReload.ChargeAddress set value "reload"
      data modify storage cronica_dev:config ApollonBowReload.ChargeConfig set value "ReloadTime"
      data modify storage cronica_dev:config ApollonBowReload.Display set value "RELOAD"
      data modify storage cronica_dev:config ApollonBowReload.DisplayColor1 set value "green"
      data modify storage cronica_dev:config ApollonBowReload.DisplayColor2 set value "lime"
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

    # ApollonArrow
      # [ MaxStack ]
      scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_arrow.MaxStack SCORE.cronica_dev.CONFIG 8

    # BeginTwilight
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica_dev.SKILL.begin_twilight.CoolTime SCORE.cronica_dev.CONFIG 600

    # WindKnowledge
      # [ ActivateTime ]
      scoreboard players set #CONFIG.cronica_dev.SKILL.wind_knowledge.ActivateTime SCORE.cronica_dev.CONFIG 60

    # ShutdownFlare
      # [ ChargePoint ]
      scoreboard players set #CONFIG.cronica_dev.SKILL.shutdown_flare.ChargePoint SCORE.cronica_dev.CONFIG 4000

  ## SELECT

    # FlyingFeather
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica_dev.SKILL.flying_feather.CoolTime SCORE.cronica_dev.CONFIG 240

    # JudgmentStone
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica_dev.SKILL.judgment_stone.CoolTime SCORE.cronica_dev.CONFIG 760

    # BlazingShield
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica_dev.SKILL.blazing_shield.CoolTime SCORE.cronica_dev.CONFIG 480
# =================================================================================================

##【 DEV STORAGE 】

  ## UNIQUE

    # ApollonBow
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.apollon_bow dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reloading dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Goal dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Stack dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Stack.Count dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.WEAPON.apollon_bow.Reload.Stack.Goal dummy
    # ApollonArrow
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.apollon_arrow dummy
    # BeginTwilight
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.begin_twilight dummy
    # WindKnowledge
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.wind_knowledge dummy
    # ShutdownFlare
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.shutdown_flare dummy

  ## SELECT

    # FlyingFeather
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.flying_feather dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.SKILL.flying_feather.CoolTime dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.SKILL.flying_feather.CoolTime.Goal dummy
    # JudgmentStone
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.judgment_stone dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.SKILL.judgment_stone.CoolTime dummy
    # BlazingShield
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.blazing_shield dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.SKILL.blazing_shield.CoolTime dummy
# =================================================================================================
# ver 0.10.4
