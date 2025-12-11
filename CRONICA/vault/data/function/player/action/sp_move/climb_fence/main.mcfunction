# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # キャンセルチェック
    execute \
        if entity @s[tag=TAG.cronica.ACTION.SpMove.climb_fence.Charged] \
        if score @s SCORE.cronica.ACTION.SpMove.climb_fence.Charging matches 1.. \
      run \
        function cronica:player/action/sp_move/climb_fence/cancel
    tag @s[scores={SCORE.cronica.ACTION.SpMove.climb_fence.Charging=1..}] add TAG.cronica.ACTION.SpMove.climb_fence.Charged

    # スタック進行
    execute if score @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Stack >= @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Stack.Goal at @s run \
      function cronica:player/action/sp_move/climb_fence/progress

    # チャージ完了
    execute if score @s SCORE.cronica.ACTION.SpMove.climb_fence.Charging >= @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Goal run \
      function cronica:player/action/sp_move/climb_fence/complete
# =================================================================================================
