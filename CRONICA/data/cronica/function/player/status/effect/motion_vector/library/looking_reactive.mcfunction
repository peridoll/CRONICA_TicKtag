# =================================================================================================

  # 再実行
    execute as @e[tag = TAG.cronica.STATUS.MotionVector.Owner] run function cronica:player/status/effect/motion_vector/library/looking_reactive_lib

  # 撤去
    execute unless entity @e[tag = TAG.cronica.STATUS.MotionVector.Owner] run scoreboard objectives remove SCORE.cronica.STATUS.MotionVector.ReActive.Power
# =================================================================================================
# ver 0.14.0
