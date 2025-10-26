# =================================================================================================

##【 DESCRIPTION 】

# コンフィグをセットする場合のスコアは、SCORE.cronica.CONFIG を使用する
#
# 例）
# 太陽神の弓(apollon_bow)のリロード時間を3秒に設定する場合 (20t = 1s)
# scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.Reload SCORE.cronica.CONFIG 60
#
# =================================================================================================

##【 IMPULSE 】

  ## UNIQUE

    # ApollonBow
      # [ Attack ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.Attack SCORE.cronica.CONFIG 14
      # [ ReloadTime ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.ReloadTime SCORE.cronica.CONFIG 60
      # [ EvolutionTime ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_bow.EvolutionTime SCORE.cronica.CONFIG 100

    # ApollonArrow
      # [ MaxStack ]
      scoreboard players set #CONFIG.cronica.WEAPON.apollon_arrow.MaxStack SCORE.cronica.CONFIG 8

    # BeginTwilight
      # [ CoolTime ]
      scoreboard players set #CONFIG.cronica.SKILL.begin_twilight.CoolTime SCORE.cronica.CONFIG 600

    # WindKnowledge
      # [ ActivateTime ]
      scoreboard players set #CONFIG.cronica.SKILL.wind_knowledge.ActivateTime SCORE.cronica.CONFIG 60

    # ShutDownFlare
      # [ ChargePoint ]
      scoreboard players set #CONFIG.cronica.SKILL.shut_down_flare.ChargePoint SCORE.cronica.CONFIG 4000

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
# ver 0.10.4
