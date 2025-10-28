# =================================================================================================

##【 IMPULSE 】

  ## UNIQUE

    # ApollonBow
      # [ Attack ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.Attack SCORE.cronica.CONFIG 14
      # [ ReloadTime ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ReloadTime SCORE.cronica.CONFIG 60
      # [ ChargeTime ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ChargeTime SCORE.cronica.CONFIG 100

    # Storage
      # [ Reload ]
      data remove storage cronica:config ApollonBowReload
      data modify storage cronica:config ApollonBowReload.Storage set value "ApollonBowReload"
      data modify storage cronica:config ApollonBowReload.ChargeType set value "Reload"
      data modify storage cronica:config ApollonBowReload.ChargeAddress set value "reload"
      data modify storage cronica:config ApollonBowReload.ChargeConfig set value "ReloadTime"
      data modify storage cronica:config ApollonBowReload.Display set value "RELOAD"
      data modify storage cronica:config ApollonBowReload.DisplayColor1 set value "green"
      data modify storage cronica:config ApollonBowReload.DisplayColor2 set value "lime"
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

    # ApollonArrow
      # [ MaxStack ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_arrow.MaxStack SCORE.cronica.CONFIG 8

    # BeginTwilight
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica.SKILL.begin_twilight.CoolTime SCORE.cronica.CONFIG 600

    # WindKnowledge
      # [ ActivateTime ]
      scoreboard players set #CONFIG.cronica.SKILL.wind_knowledge.ActivateTime SCORE.cronica.CONFIG 60

    # ShutdownFlare
      # [ ChargePoint ]
      scoreboard players set #CONFIG.cronica.SKILL.shutdown_flare.ChargePoint SCORE.cronica.CONFIG 4000

  ## SELECT

    # FlyingFeather
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica.SKILL.flying_feather.CoolTime SCORE.cronica.CONFIG 240

    # JudgmentStone
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica.SKILL.judgment_stone.CoolTime SCORE.cronica.CONFIG 760

    # BlazingShield
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica.SKILL.blazing_shield.CoolTime SCORE.cronica.CONFIG 480
# =================================================================================================

##【 DEV STORAGE 】

  ## UNIQUE

    # ApollonBow
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reloading dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Goal dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal dummy
    # ApollonArrow
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy
    # BeginTwilight
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.begin_twilight dummy
    # WindKnowledge
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.wind_knowledge dummy
    # ShutdownFlare
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.shutdown_flare dummy

  ## SELECT

    # FlyingFeather
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.flying_feather dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CoolTime dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.SKILL.flying_feather.CoolTime.Goal dummy
    # JudgmentStone
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.judgment_stone dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.CoolTime dummy
    # BlazingShield
      execute unless entity @s run scoreboard objectives add SCORE.cronica.MODE.blazing_shield dummy
      execute unless entity @s run scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.CoolTime dummy
# =================================================================================================
# ver 0.10.4
