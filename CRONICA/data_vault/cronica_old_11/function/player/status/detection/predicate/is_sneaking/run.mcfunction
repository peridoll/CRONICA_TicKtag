# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.STATUS.IsSneaking dummy
      scoreboard players add @s SCORE.cronica.STATUS.IsSneaking 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaked
      tag @s add TAG.cronica.STATUS.IsSneaking

  ## 後続処理管理

    # メイン関数実行
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSneaking = 2..}] run function cronica:player/status/detection/predicate/is_sneaking/main
      schedule function cronica:player/status/detection/predicate/is_sneaking/main 1t
# =================================================================================================
# ver 0.11.0
