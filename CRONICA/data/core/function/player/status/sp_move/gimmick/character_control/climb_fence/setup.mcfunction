# =================================================================================================

##【 IMPULSE 】

    # コンフィグ読み込み
      function core:player/status/sp_move/config

    # 目標値設定
      scoreboard objectives add SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal dummy
      execute store result score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal run \
        data get storage cronica:config sp_move.character_control.climb_fence.ChargeTime
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal matches ..9 run \
        scoreboard players set @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal 10
      scoreboard objectives add SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Goal dummy
      scoreboard players operation @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Goal = @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Goal
      scoreboard players operation @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Goal /= #10 SCORE.cronica.CONFIG

    # 進行カウント設定 & 初回実行
      scoreboard objectives add SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count dummy
      function core:player/status/sp_move/gimmick/character_control/climb_fence/progress
# =================================================================================================
# ver 0.12.0
