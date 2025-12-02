# =================================================================================================

##【 TICK 】
# 毎ティック常時実行される

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.GetHeal
      tag @s remove TAG.cronica.STATUS.GetDamage



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

      # 現在の体力
        scoreboard objectives add SCORE.cronica.STATUS.Combat.Health.Current health

      # 前回の体力
        scoreboard objectives add SCORE.cronica.STATUS.Combat.Health.Previous dummy
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.Health.Previous = @s SCORE.cronica.STATUS.Combat.Health.Current

  ## 撤去処理予約

    # スコア撤去
      schedule function cronica:player/action/combat/health/leave 2t
# =================================================================================================
# ver 0.13.0
