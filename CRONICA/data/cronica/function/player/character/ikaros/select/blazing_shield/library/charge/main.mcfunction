# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      execute as @a[tag = TAG.cronica.CHARACTER.blazing_shield.chargeed] run \
        function core:player/character/charge/macro/cancel with storage cronica:config blazing_shield.CustomData.charge
      tag @a[scores = {SCORE.cronica.CHARACTER.blazing_shield.chargeing = 0..}] add TAG.cronica.CHARACTER.blazing_shield.chargeed

    # 進捗完了
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.blazing_shield.charge.Stack dummy
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.blazing_shield.charge.Stack.Goal dummy
      execute as @a[scores = {SCORE.cronica.CHARACTER.blazing_shield.chargeing = 1..}] \
          if score @s SCORE.cronica.CHARACTER.blazing_shield.charge.Stack = @s SCORE.cronica.CHARACTER.blazing_shield.charge.Stack.Goal \
        run \
          function core:player/character/charge/macro/progress with storage cronica:config blazing_shield.CustomData.charge

    # 完了処理
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.blazing_shield.chargeing dummy
      # execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.blazing_shield.charge.Goal dummy
      # execute as @a[scores = {SCORE.cronica.CHARACTER.blazing_shield.chargeing = 1..}] \
          if score @s SCORE.cronica.CHARACTER.blazing_shield.chargeing = @s SCORE.cronica.CHARACTER.blazing_shield.charge.Goal \
        run \
          function core:player/character/charge/macro/complete with storage cronica:config blazing_shield.CustomData.charge

    # 再起処理
      execute if entity @a[tag = TAG.cronica.CHARACTER.blazing_shield.chargeing] run \
        schedule function cronica:player/character/ikaros/select/blazing_shield/library/charge/main 1t
# =================================================================================================
# ver 0.12.0
