# =================================================================================================

##【 IMPULSE 】

  ## 指定した数値の強さで視点の方向にかっ飛ばす

    # 一時的にTPしたエンティティを戻す
      execute positioned ~ ~0.0006 ~ as @e[distance = ..0.0003, tag = TAG.cronica.STATUS.MotionVector.Teleported] at @s run tp @s ~ ~-0.0006 ~
      execute positioned ~ ~ ~ as @e[distance = ..0.0003, tag = TAG.cronica.STATUS.MotionVector.Teleported] run tag @s remove TAG.cronica.STATUS.MotionVector.Teleported
      execute positioned ~ ~ ~ as @p[distance = ..0.0003, tag = TAG.cronica.STATUS.MotionVector.Owner] run tag @s remove TAG.cronica.STATUS.MotionVector.Owner
# =================================================================================================
# ver 0.14.0
