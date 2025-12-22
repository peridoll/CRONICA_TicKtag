# =================================================================================================

# 同じ位置のエンティティを一時的にTP
  execute as @e[distance = ..0.0003, tag =! TAG.cronica.STATUS.MotionVector.Owner, tag =! hb.enc_stand, predicate =! cronica:is_riding] run tag @s add hb.tp
  execute as @e[distance = ..0.0003, tag = hb.tp] at @s run tp @s ~ ~0.0006 ~
# =================================================================================================
# ver 0.14.0
