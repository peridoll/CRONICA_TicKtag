# =================================================================================================

##【 TICK 】
# 毎ティック常時実行される

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.GetHeal
      tag @s remove TAG.cronica.STATUS.GetDamage

    # スコア管理

      # 現在の体力
        scoreboard objectives add SCORE.cronica.STATUS.Combat.Health.Current dummy
        execute store result score @s SCORE.cronica.STATUS.Combat.Health.Current run data get entity @s Health 1



  ## 体力の増減を管理

    # 増減確認
      scoreboard players reset @s SCORE.cronica.STATUS.Combat.Health.Change
      execute unless score @s SCORE.cronica.STATUS.Combat.Health.Current = @s SCORE.cronica.STATUS.Combat.Health.Previous run \
        function cronica:player/action/combat/health/fluctuation

      execute as @s[tag = temp.test] run tellraw @a [{score:{name:"@s",objective:"SCORE.cronica.STATUS.Combat.Health.Current"}}]

  ## データ管理

    # スコア管理

      # 前回の体力
        scoreboard objectives add SCORE.cronica.STATUS.Combat.Health.Previous dummy
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.Health.Previous = @s SCORE.cronica.STATUS.Combat.Health.Current



  ## 撤去処理予約

    # スコア撤去
      schedule function cronica:player/action/combat/health/leave 2t
# =================================================================================================
# ver 0.13.0
