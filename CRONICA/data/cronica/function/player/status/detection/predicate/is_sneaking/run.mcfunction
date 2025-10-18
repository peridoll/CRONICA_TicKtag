# =================================================================================================
#
# CRONICA - PREDICATE IS SNEAKING DETECTION
#
# run
# |
# main
# └─ finish
#   └─ reset
#
# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.STATUS.IsSneaking dummy
      scoreboard players add @s SCORE.cronica.STATUS.IsSneaking 1

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaked
      tag @s add TAG.cronica.STATUS.IsSneaking
# =================================================================================================
# ver 0.10.3
