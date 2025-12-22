# =================================================================================================

##【 IMPULSE 】

  ## 指定の力で視点方向に対象を飛ばす

    # 向いている方向から分解ベクトルを取得
      $execute if score #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector matches ..-1 run data modify storage cronica:temp MotionVector.Signs.$(Vector) set value -1

      $execute if data storage cronica:temp MotionVector.Signs{$(Vector): -1} run scoreboard players operation #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector *= #-1 SCORE.cronica.CONFIG

      $execute store result storage cronica:temp MotionVector.Macro.$(Vector)1 int 0.0001 run scoreboard players get #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector
      $execute store result storage cronica:temp MotionVector.Macro.$(Vector)2 int 0.01 run scoreboard players operation #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector %= #10000 SCORE.cronica.CONFIG
      $execute store result storage cronica:temp MotionVector.Macro.$(Vector)3 int 1 run scoreboard players operation #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector %= #100 SCORE.cronica.CONFIG

      $execute if data storage cronica:temp MotionVector.Macro{$(Vector)1: 0} run data modify storage cronica:temp MotionVector.Macro.$(Vector)1 set value 100
      $execute if data storage cronica:temp MotionVector.Macro{$(Vector)2: 0} run data modify storage cronica:temp MotionVector.Macro.$(Vector)2 set value 100
      $execute if data storage cronica:temp MotionVector.Macro{$(Vector)3: 0} run data modify storage cronica:temp MotionVector.Macro.$(Vector)3 set value 100
# =================================================================================================
# ver 0.14.0
