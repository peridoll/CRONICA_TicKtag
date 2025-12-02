# =================================================================================================

##【 IMPULSE 】

    # コンフィグ読み込み
      function cronica:player/action/sp_move/config

    # 目標値設定
      scoreboard objectives add SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Goal dummy
      execute store result score @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Goal run \
        data get storage cronica:config SpMove.climb_fence.ChargeTime
      scoreboard objectives add SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Stack.Goal dummy
      scoreboard players operation @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Stack.Goal = @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Goal
      scoreboard players operation @s SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Stack.Goal /= #10 SCORE.cronica.CONFIG

    # 進行カウント設定 & 初回実行
      scoreboard objectives add SCORE.cronica.ACTION.SpMove.climb_fence.Charge.Stack.Count dummy
      function cronica:player/action/sp_move/climb_fence/progress
# =================================================================================================
# ver 0.12.0
