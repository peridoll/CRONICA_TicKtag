# =================================================================================================

# 一時的にTPしたエンティティを戻す
  execute positioned ~ ~0.0006 ~ \
    as @e[distance = ..0.0003, tag = hb.tp] at @s run tp @s ~ ~-0.0006 ~
  execute positioned ~ ~ ~ \
    as @e[distance = ..0.0003, tag = hb.tp] run tag @s remove hb.tp

  execute positioned ~ ~ ~ \
    as @p[distance = ..0.0003, tag = TAG.cronica.STATUS.MotionVector.Owner] run tag @s remove TAG.cronica.STATUS.MotionVector.Owner
# =================================================================================================
# ver 0.14.0
