# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      execute as @a[tag = TAG.cronica.WEAPON.apollon_bow.Evolved] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/finish
      tag @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Evolving = 0..}] add TAG.cronica.WEAPON.apollon_bow.Evolved

    # 完了処理
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Evolving = 1..}] \
          if score @s SCORE.cronica.WEAPON.apollon_bow.Evolving = @s SCORE.cronica.WEAPON.apollon_bow.Evolve.Goal \
        run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/evolve

    # 再起処理
      execute if entity @a[tag = TAG.cronica.WEAPON.apollon_bow.Evolving] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/main 1t
# =================================================================================================
# ver 0.13.0
