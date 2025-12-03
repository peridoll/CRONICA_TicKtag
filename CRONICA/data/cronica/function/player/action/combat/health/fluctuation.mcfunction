# =================================================================================================

##【 IMPULSE 】

  ## 体力の増減を管理

    # 増加
      execute if score @s SCORE.cronica.STATUS.Combat.Health.Current > @s SCORE.cronica.STATUS.Combat.Health.Previous run \
        tag @s add TAG.cronica.STATUS.GetHeal

    # 減少
      execute if score @s SCORE.cronica.STATUS.Combat.Health.Current < @s SCORE.cronica.STATUS.Combat.Health.Previous run \
        tag @s add TAG.cronica.STATUS.GetDamage



  ## データ管理

    # スコア管理

      # 増減値を記入
        scoreboard objectives add SCORE.cronica.STATUS.Combat.Health.Change dummy
        scoreboard players set @s SCORE.cronica.STATUS.Combat.Health.Change 0

        # 増加
          execute if entity @s[tag = TAG.cronica.STATUS.GetHeal] run \
            scoreboard players operation @s SCORE.cronica.STATUS.Combat.Health.Change = @s SCORE.cronica.STATUS.Combat.Health.Current
          execute if entity @s[tag = TAG.cronica.STATUS.GetHeal] run \
            scoreboard players operation @s SCORE.cronica.STATUS.Combat.Health.Change -= @s SCORE.cronica.STATUS.Combat.Health.Previous

        # 減少
          execute if entity @s[tag = TAG.cronica.STATUS.GetDamage] run \
            scoreboard players operation @s SCORE.cronica.STATUS.Combat.Health.Change = @s SCORE.cronica.STATUS.Combat.Health.Previous
          execute if entity @s[tag = TAG.cronica.STATUS.GetDamage] run \
            scoreboard players operation @s SCORE.cronica.STATUS.Combat.Health.Change -= @s SCORE.cronica.STATUS.Combat.Health.Current
# =================================================================================================
# ver 0.13.0
