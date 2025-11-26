# =================================================================================================

##【 REPEAT 】

  ## 関数呼び出し

    # 画面表示
      execute as @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.chargeing = 0..}] run \
        function cronica:player/character/ikaros/select/judgment_stone/library/charge/decoration

    # 使用終了検知
      execute as @a[tag = TAG.cronica.CHARACTER.judgment_stone.chargeed] run \
        function core:player/character/charge/macro/cancel with storage cronica:config judgment_stone.CustomData.charge
      tag @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.chargeing = 0..}] add TAG.cronica.CHARACTER.judgment_stone.chargeed

    # 進捗完了
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.judgment_stone.chargeing dummy
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.judgment_stone.charge.Stack dummy
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Goal dummy
      execute as @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.chargeing = 1..}] \
          if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack = @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Goal \
        run \
          function core:player/character/charge/macro/progress with storage cronica:config judgment_stone.CustomData.charge

    # 再起処理
      execute if entity @a[tag = TAG.cronica.CHARACTER.judgment_stone.chargeing] run \
        schedule function cronica:player/character/ikaros/select/judgment_stone/library/charge/main 1t
# =================================================================================================
# ver 0.12.0
