# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      execute as @a[tag = TAG.cronica.CHARACTER.apollon_bow.evolutioned] run \
        function core:player/character/charge/macro/cancel with storage cronica:config apollon_bow.CustomData.evolution
      tag @a[scores = {SCORE.cronica.CHARACTER.apollon_bow.evolutioning = 0..}] add TAG.cronica.CHARACTER.apollon_bow.evolutioned

    # 進捗完了
      # execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.apollon_bow.evolution.Stack dummy
      # execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.apollon_bow.evolution.Stack.Goal dummy
      # execute as @a[scores = {SCORE.cronica.CHARACTER.apollon_bow.evolutioning = 1..}] \
      #     if score @s SCORE.cronica.CHARACTER.apollon_bow.evolution.Stack = @s SCORE.cronica.CHARACTER.apollon_bow.evolution.Stack.Goal \
      #   run \
      #     function core:player/character/charge/macro/progress with storage cronica:config apollon_bow.CustomData.evolution

    # 完了処理
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.apollon_bow.evolutioning dummy
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.apollon_bow.evolution.Goal dummy
      # execute as @a[scores = {SCORE.cronica.CHARACTER.apollon_bow.evolutioning = 1..}] \
      #     if score @s SCORE.cronica.CHARACTER.apollon_bow.evolutioning = @s SCORE.cronica.CHARACTER.apollon_bow.evolution.Goal \
      #   run \
      #     function core:player/character/charge/macro/complete with storage cronica:config apollon_bow.CustomData.evolution
      execute as @a[scores = {SCORE.cronica.CHARACTER.apollon_bow.evolutioning = 1..}] \
          if score @s SCORE.cronica.CHARACTER.apollon_bow.evolutioning = @s SCORE.cronica.CHARACTER.apollon_bow.evolution.Goal \
        run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve

    # 再起処理
      execute if entity @a[tag = TAG.cronica.CHARACTER.apollon_bow.evolutioning] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/library/evolution/main 1t
# =================================================================================================
# ver 0.12.0
