# =================================================================================================

##【 IMPULSE 】

  ## 後続処理呼び出し

    # 発動確認
      scoreboard objectives add SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count dummy
      execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches 0.. run \
        function cronica:player/character/ikaros/select/judgment_stone/run
# =================================================================================================
# ver 0.12.0
