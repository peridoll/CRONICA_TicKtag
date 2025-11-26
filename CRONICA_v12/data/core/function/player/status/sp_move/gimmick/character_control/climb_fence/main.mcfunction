# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # キャンセルチェック
    execute \
        if entity @s[tag=TAG.cronica.STATUS.SpMove.climb_fence.Charged] \
        if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charging matches 1.. \
      run \
        function core:player/status/sp_move/gimmick/character_control/climb_fence/cancel
    tag @s[scores={SCORE.cronica.STATUS.SpMove.climb_fence.Charging=1..}] add TAG.cronica.STATUS.SpMove.climb_fence.Charged

    # スタック進行
    execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack >= @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Goal at @s run \
      function core:player/status/sp_move/gimmick/character_control/climb_fence/progress

    # チャージ完了
    execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charging >= @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal run \
      function core:player/status/sp_move/gimmick/character_control/climb_fence/complete
# =================================================================================================
