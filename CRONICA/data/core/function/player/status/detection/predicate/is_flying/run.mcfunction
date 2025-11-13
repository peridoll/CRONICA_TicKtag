# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.STATUS.IsFlying dummy
      scoreboard players add @s SCORE.cronica.STATUS.IsFlying 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsFlew
      tag @s add TAG.cronica.STATUS.IsFlying

  ## 後続処理管理

    # メイン関数実行
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsFlying = 2..}] run function core:player/status/detection/predicate/is_flying/main
      schedule function core:player/status/detection/predicate/is_flying/main 1t
# =================================================================================================
# ver 0.12.0
