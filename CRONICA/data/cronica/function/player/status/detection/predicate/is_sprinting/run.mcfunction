# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.STATUS.IsSprinting dummy
      scoreboard players add @s SCORE.cronica.STATUS.IsSprinting 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSprinted
      tag @s add TAG.cronica.STATUS.IsSprinting

  ## 後続処理管理

    # メイン関数実行
      execute unless entity @a[scores = {SCORE.cronica.STATUS.IsSprinting = 2..}] run function cronica:player/status/detection/predicate/is_sprinting/main
      schedule function cronica:player/status/detection/predicate/is_sprinting/main 1t
# =================================================================================================
# ver 0.11.0
