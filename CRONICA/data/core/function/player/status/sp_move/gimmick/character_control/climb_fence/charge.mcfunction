# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動不可
      effect give @s minecraft:slowness infinite 2 true

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.SpMove.climb_fence.Charged
      tag @s remove TAG.cronica.STATUS.IsSneaking

    # スコア管理

      # 実行加算値
        scoreboard objectives add SCORE.cronica.STATUS.SpMove.climb_fence.Charging dummy
        scoreboard players add @s SCORE.cronica.STATUS.SpMove.climb_fence.Charging 1
        scoreboard objectives add SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack dummy
        scoreboard players add @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack 1

      # 初回設定
        execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charging matches 1 run \
          function core:player/status/sp_move/gimmick/character_control/climb_fence/setup

  ## 特殊処理

    # 高速乗り越え
      execute if predicate core:is_sprinting if score @s SCORE.cronica.STATUS.IsSneaking matches ..5 run \
        function core:player/status/sp_move/gimmick/character_control/climb_fence/complete
      execute if predicate core:is_sprinting if score @s SCORE.cronica.STATUS.IsSneaking matches ..5 run effect give @s minecraft:speed 1 2 true
# =================================================================================================
# ver 0.12.0
