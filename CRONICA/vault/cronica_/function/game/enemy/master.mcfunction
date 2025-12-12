# =================================================================================================

##【 TICK 】


  ## 敵管理

    # 召喚

      # スケルトン
        execute as @e[tag =! TAG.cronica.TOTEM, tag =! TAG.cronica.MOB, type = skeleton] run function cronica:game/enemy/skeleton/regist

    # 体力0以下の敵を削除
      execute as @e[tag = TAG.cronica.MOB] if score @s SCORE.cronica.STATUS.Combat.Health.Current matches ..80 run kill @s

    # トーテム管理
      execute as @e[tag = TAG.cronica.TOTEM] at @s run tp @s ~ ~ ~ facing entity @p[distance = ..10] feet
# =================================================================================================
# ver 0.13.0
