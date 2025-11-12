# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      execute as @a[tag = TAG.cronica.WEAPON.apollon_bow.Charged] run \
        function cronica:player/character/common/charge/macro/cancel with storage cronica:config ApollonBowCharge
      tag @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] add TAG.cronica.WEAPON.apollon_bow.Charged

    # 完了処理
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 1..}] \
          if score @s SCORE.cronica.WEAPON.apollon_bow.Charging = @s SCORE.cronica.WEAPON.apollon_bow.Charg.Goal \
        run \
          function cronica:player/character/ikaros/unique/apollon_bow/library/evolve

    # 再起処理
      execute if entity @a[tag = TAG.cronica.WEAPON.apollon_bow.Charging] run \
        schedule function cronica:player/character/ikaros/unique/apollon_bow/library/charge/main 1t
# =================================================================================================
# ver 0.11.0
