# =================================================================================================

##【 IMPULSE 】

  ## 後続処理呼び出し

    # 発動確認
      scoreboard objectives add SCORE.cronica.CHARACTER.blazing_shield.charge.Stack.Count dummy
      execute if score @s SCORE.cronica.CHARACTER.blazing_shield.charge.Stack.Count matches 0.. run \
        function cronica:player/character/ikaros/select/blazing_shield/run
# =================================================================================================
# ver 0.12.0
