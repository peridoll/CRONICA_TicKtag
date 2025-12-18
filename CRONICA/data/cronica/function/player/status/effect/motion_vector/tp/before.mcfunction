# =================================================================================================

##【 IMPULSE 】

  ## 指定した数値の強さで視点の方向にかっ飛ばす

    # 同じ位置のエンティティを一時的にTP
      execute as @e[distance = ..0.0003, tag =! TAG.cronica.STATUS.MotionVector.Owner, tag =! TAG.cronica.STATUS.MotionVector.MasterStand, predicate =! cronica:is_riding] run tag @s add TAG.cronica.STATUS.MotionVector.Teleported
      execute as @e[distance = ..0.0003, tag = TAG.cronica.STATUS.MotionVector.Teleported] at @s run tp @s ~ ~0.0006 ~
# =================================================================================================
# ver 0.14.0
