# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.STATUS.IsSwimming dummy
      scoreboard players add @s SCORE.cronica.STATUS.IsSwimming 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSwam
      tag @s add TAG.cronica.STATUS.IsSwimming

  ## 後続処理管理

    # メイン関数実行
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSwimming = 2..}] run function cronica:player/status/detection/predicate/is_swimming/main
      schedule function cronica:player/status/detection/predicate/is_swimming/main 1t
# =================================================================================================
# ver 0.11.0
